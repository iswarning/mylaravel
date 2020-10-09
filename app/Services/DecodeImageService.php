<?php

namespace App\Services;
use Illuminate\Support\Str;

class DecodeImageService
{
    private $file;
    
    public function __construct($file)
    {
        $this->file = $file;
    }

    public function process()
    {
        $exploded = explode(',', $this->file);

        $decoded = base64_decode($exploded[1]);

        if(str_contains($exploded[0], 'jpeg'))
        {
            $extension = 'jpg';
        }
        else
        {
            $extension = 'png';
        }

        $fileName = Str::random().'.'.$extension;

        $path = public_path().'/'.'image/'.$fileName;

        file_put_contents($path, $decoded);
        
        $url = 'image/'.$fileName.'';

        return $url;
    }
}