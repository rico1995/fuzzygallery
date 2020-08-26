<?php

class Photo extends Db_object{

    protected static $db_table = "photos";
    protected static $db_table_fields = array('id', 'title','caption', 'description', 'filename','alternate_text','type','size');
    public $id;
    public $title;
    public $caption;
    public $description;
    public $filename;
    public $alternate_text;
    public $type;
    public $size;

    public $tmp_path;
    public $upload_directory = "images";
    public $custom_errors = array();
    public $upload_errors_array = array(

        UPLOAD_ERR_OK           => "There is no error, the file uploaded with success.",
        UPLOAD_ERR_INI_SIZE     => "The uploaded file exceeds the upload_max_filesize directive in php.ini.",
        UPLOAD_ERR_PARTIAL      => "The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form.",
        UPLOAD_ERR_NO_FILE      => "No file was uploaded.",
        UPLOAD_ERR_NO_TMP_DIR   => "Missing a temporary folder. (From PHP 5.0.3).",
        UPLOAD_ERR_CANT_WRITE   => "Failed to write file to disk. (From PHP 5.1.0).",
        UPLOAD_ERR_EXTENSION    => "A PHP extension stopped the file upload. (From PHP 5.2.0)."

    );



    // This is passing $_FILES['uploaded_file'] as an argument
    // $_FILES = $file


    public function set_file($file){

        if(empty($file) || !$file || !is_array($file)){

            $this->errors[] = "There was no file uploaded here.";
            return false;

        }elseif($file['error'] !=0 ){

            $this->errors[] = $this->upload_errors_array[$file['error']];
            return false;

        } else{

            $this->filename = basename($file['name']);
            $this->tmp_path = $file['tmp_name'];
            $this->type     = $file['type'];
            $this->size     = $file['size'];
        }

    }

    public function picture_path(){

        return $this->upload_directory.DS.$this->filename;

    }


    public function save(){

        if($this->id){

            $this->update();

        }else{

            if(!empty($this->errors)){

                return false;

            }

            if(empty($this->filename) || empty($this->tmp_path)){

                $this->errors[] = "The file was not available.";
                return false;

            }

            $target_path = SITE_ROOT . DS . 'admin' . DS . $this->upload_directory . DS . $this->filename;

            if(file_exists($target_path)){

                $this->errors[] = "The file {$this->filename} already exists.";
                return false;

            }

            if(move_uploaded_file($this->tmp_path, $target_path)){

                if($this->create()){

                    unset($this->tmp_path);
                    return true;

                }

            }else{

                $this->errors[] = "The file directory probably does not have permission.";
                return false;
            }

            $this->create();

        }

    }//save method end


    public function delete_photo(){

        if($this->delete()){

            $target_path = SITE_ROOT.DS. 'admin' . DS . $this->picture_path();

            return unlink($target_path) ? true : false;

        }else{

            return false;

        }

    }

    public static function display_sidebar_data($photo_id){

        $photo = Photo::find_by_id($photo_id);

        $output ="<a class='thumbnail' href='#'><img width='100' src='{$photo->picture_path()}'></a>";
        $output .= "<p>{$photo->filename}</p>";
        $output .= "<p>{$photo->type}</p>";
        $output .= "<p>{$photo->size}</p>";

        echo $output;

    }


}//class Photo end
