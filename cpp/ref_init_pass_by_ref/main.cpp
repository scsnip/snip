class RefC{
    public:
    int& _a;
    RefC(int a):_a(a){_a++;};
};

class ValC{
    public:
    int _a;
    ValC(int a):_a(a){_a++;};
};


int 
main(){
    int test_val=1;
    int test_val2=2;
    int test_val3=3;
    test_val++;
    test_val2++;

    asm("nop");
    RefC rc(test_val);

    asm("nop");
    ValC vc(test_val); 

    asm("nop");
}
