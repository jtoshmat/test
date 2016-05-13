<?php
class register{
    protected $conn;
    public function __construct()
    {
        if($_SERVER['REQUEST_METHOD']!='POST'){
            $this->redirect('../register.php','error','Invalid request method');
        }

        //Singleton can be used for instantiating the database conneciton
        $this->conn = new mysqli('127.0.0.1', 'root', '','homestead');
        if ($this->conn->connect_error) {
            $this->redirect('register.php','error','Connection failed: ' . $this->conn->connect_error);
        }

        //Only basic input cleaning applied
        $name =strip_tags($_POST['name']);
        $username =strip_tags($_POST['username']);
        $password = strip_tags($_POST['password']);
        $registered_date = date('Y-m-d H:i:s');

        //This portion can be extracted to a protected method
        $stmt = $this->conn->prepare("INSERT INTO users (name, username, password, registered_date) VALUES (?,?,?,?)");
        $stmt->bind_param('ssss', $name, $username, $password, $registered_date);
        $stmt->execute();
        $record = $stmt->affected_rows;

        //if registration is not successfull redirect to register page
        if(!$record){
            $this->redirect('../register.php','error','Registration failed');
        }

        //Options:
        // 1) login the user and redirect to members page
        // 2) redirect to login page
        $this->redirect('../members/index.php','message','Registration successfully completed');
    }

    protected function redirect($url='../register.php', $type='message', $msg){
        header("Location: $url?$type=$msg");
        log(__METHOD__.':'.__LINE__.' message: '.$msg);
        die();
    }

}

$register = new register();