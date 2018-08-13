#include <iostream>
#include <string>

using namespace std;
class Base {
public:
    string a1 = "B1";
    int p(){
        cout<<"inBase a1="<<a1<<endl;
        cout<<"inBase a2="<<a2<<endl;
        cout<<"inBase a3="<<a3<<endl<<endl;
    }
protected:
    string a2 = "B2";
private:
    string a3 = "B3";
};

class Derived : public Base {
friend void clobber(Base&);
friend void clobber(Derived&);
public:
    string a4 = "D4";
    int p(){
        cout<<"inD a4="<<a4<<endl;
        cout<<"inD a5="<<a5<<endl;
        cout<<"inD a6="<<a6<<endl;
    //    a1 = 91;
        cout<<"inD a1="<<a1<<endl;
        Base::a2 = "D2";
        cout<<"inD a2="<<a2<<endl<<endl;
        
    }
protected:
    string a5 = "D5";
private:
    string a6 = "D6";
};

//void clobber(Base &b) { b.a2 = "C2"; }
void clobber(Derived &d) { d.a2 = "C2"; d.a5 = "C5";}


int main() {
    Base mybase;
    Derived myderived;
    cout<<"mybase.p()"<<endl;
    mybase.p();
    cout<<"myderived.p()"<<endl;
    myderived.p();
    myderived.a1 = "M1";
    myderived.a4 = "M4";
    cout<<"mybase.p()"<<endl;
    mybase.p();
    cout<<"myderived.p()"<<endl;
    clobber(myderived);
    myderived.p();
    mybase.a1 = "M1";
    cout<<"inmain mybase.a1="<<mybase.a1<<endl;
//    cout<<"inmain mybase.a2="<<mybase.a2<<endl;
    
//    cout<<"inmain myderived.a2="<<myderived.a2<<endl;
    cout<<"inmain myderived.a4="<<myderived.a4<<endl;
//    cout<<"inmain myderived.a5="<<myderived.a5<<endl;
}


