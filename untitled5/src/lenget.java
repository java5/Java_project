public class lenget {
    Node s = head.getNext();
    int i=0;
    while (s!=null){
        s=s.getNext();
        ++i;
    }
    return i;
}
