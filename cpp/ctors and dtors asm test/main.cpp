class HAS_CD {
    public:
    int a;
    char b;
    short c;
    HAS_CD(){++a;};
    ~HAS_CD(){--a;};
    int get_a(){a=5;return a;};
};

class HAS_NO_CD{
    public:
        int a;
        char b;
        short c;
        HAS_CD has_cd;
};

class POD_HAS_CD {
    public:
        int a;
        short b;
        char c;
        POD_HAS_CD(){};
        ~POD_HAS_CD(){};
};

class POD_HAS_NO_CD {
    public:
        int b;
        short bb;
        char bc;
};

class RPOD_HAS_NO_CD {
    public:
    int a;
    POD_HAS_NO_CD b;
};

int main(){
    asm("nop");
    HAS_CD has_cd1;//u-defined ctor called on stack memory area
    asm("nop");
    HAS_CD* has_cd2=new HAS_CD;//new,u-defined ctor 
    asm("nop");
    HAS_CD* has_cd3=new HAS_CD();//new,u-defined ctor 
    asm("nop");
    HAS_CD has_cd4=has_cd1;//inline copy
    asm("nop");
    HAS_CD has_cd6(*has_cd2);//inline copy
    asm("nop");

    POD_HAS_NO_CD pod_has_no_cd1;//no auto ctor/dtor generated.no code at all,affects only stack offsets
    asm("nop");
    POD_HAS_NO_CD* pod_has_no_cd2=new POD_HAS_NO_CD;//new,no data init
    asm("nop");
    POD_HAS_NO_CD* pod_has_no_cd3=new POD_HAS_NO_CD();//new,zero-init
    asm("nop");
    POD_HAS_NO_CD pod_has_no_cd4(*pod_has_no_cd2);//inline copy
    asm("nop");
    POD_HAS_NO_CD pod_has_no_cd5=*pod_has_no_cd3;//inline copy
    asm("nop");

    POD_HAS_CD pod_has_cd1;//u-ctor called on stack memory area.
    asm("nop");
    POD_HAS_CD pod_has_cd2(pod_has_cd2);///nothing generated,why the hell no error:)?O.o
    asm("nop");
    POD_HAS_CD pod_has_cd3(pod_has_cd1);//inline copy
    asm("nop");
    POD_HAS_CD* pod_has_cd4=new POD_HAS_CD;//new,u-ctor,no data init
    asm("nop");
    POD_HAS_CD* pod_has_cd5=new POD_HAS_CD();//new,u-ctor,no data init
    asm("nop");

    RPOD_HAS_NO_CD rpod_has_no_cd1;//no auto ctor generated,no ctor calln.no code at all.affects only stack ofssets 
    asm("nop");
    RPOD_HAS_NO_CD rpod_has_no_cd2(rpod_has_no_cd1);//inline copy
    asm("nop");

    HAS_NO_CD has_no_cd1;//gcc creates default gcc-ctor and gcc-dtor.gcc-ctor called with stack memory area.no new call
    asm("nop");
    HAS_NO_CD* has_no_cd2=new HAS_NO_CD;//new,gcc-ctor
    asm("nop");
    HAS_NO_CD* has_no_cd3=new HAS_NO_CD();//new,zero-init,gcc-ctor(calls HAS_CD u-ctor)
    asm("nop");
    HAS_NO_CD has_no_cd4=*has_no_cd3;//inline copy
    asm("nop");
    HAS_NO_CD has_no_cd5(*has_no_cd3);//inline copy
    asm("nop");
    return 5;
}
