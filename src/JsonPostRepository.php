<?php

namespace LittleThings;

class JsonPostRepository implements PostRepository, JsonRepository
{

    public $fileName;

    public function __construct($file)
    {
        $this->fileName = STORAGE_PATH . '/posts-copy.json';
        if (!file_exists($this->fileName)){
            //log the error here if the file does not exist
            return 'The file does not exist';
        }
    }


    /**
     * Creates array of posts from associative array
     *
     * @param array $posts
     * @return array
     **/
    protected function hydrate(array $posts)
    {
        return array_map(function ($post) {
            return new Post(
                $post['id'],
                $post['date'],
                $post['authorId'],
                $post['title'],
                $post['slug']
            );
        }, $posts);
    }

    public function all()
    {
        return $this->readJson();
    }

    public function add(Post $post)
    {
        $date = (array) $post->date;
        $data2 = array(
            'id' => (string) $post->id,
            'date' => '2015-12-12',
            'authorId' => (string)$post->authorId,
            'title' => $post->title,
            'slug' => $post->slug,
        );
        $data = json_decode($this->readJson(), true);
        $data[] = $data2;
        $this->writeJson($data);
    }

    public function writeJson(array $data)
    {
        return file_put_contents($this->fileName, json_encode($data));
    }
    public function findById($id)
    {
        $data = json_decode($this->readJson(), true);
        if(!$data){
            return 'No record found by id: '.$id;
        }
        foreach ($data as $num => $value) {
            if ($value['id']==$id){
                return $value;
            }
        }
    }
    public function readJson()
    {
        return file_get_contents($this->fileName);
    }

}