public class Node {
    private int data;
    private Node next;
    public Node(){
        this(0,null);
    }
    public Node(int data){
        this(data,null);
    }
    public Node(int data,Node next){
        this.data=data;
        this.next=next;
    }
    public void setData(int data){
        this.data=data;
    }
    public int getData(){
        return data;
    }
    public void steNext(Node next){
        this.next=next;
    }
    public Node getNext(){
        return next;
    }
}
