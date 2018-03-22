// version 1 Singleton.cpp
#include <iostream>
using std::cout;
using std::endl;

class Singleton {

	static Singleton ins;
	int i;
	Singleton (int x = 0):i(x) {}
	Singleton& operator=(Singleton& );
	Singleton (const Singleton&);

  public:
	static Singleton& instance () { return ins; }
	int getValue() { return i;}
	void setValue (int x) { i = x; }
};

Singleton Singleton::ins(99);

int main () {
	Singleton& s = Singleton::instance ();
	cout << s.getValue () << endl;
}
///
