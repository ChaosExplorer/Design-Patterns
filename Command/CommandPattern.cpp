// CommandPattern.cpp
// author: Chaos

#include <iostream>
#include <vector>
using std::cout;
using std::endl;
using std::vector;


class Command {
	public:
		virtual void execute () = 0;
};

class DogSpeak : public Command {
	public:
		void execute () {
			cout << "i am a dog" << endl;
		}
};

class CatSpeak : public Command {
	public:
		void execute () {
			cout << "i am a cat" << endl;
		}
};

class BirdSpeak : public Command {
	public:
		void execute () {
			cout << "bird am i" << endl;
		}
};

// the object that holds commands;
class Commander {
	private:
		vector<Command*> commands;
	public:
		void add (Command* c) { commands.push_back (c); }
		
		void run () {
			vector<Command*>::iterator iter = commands.begin ();
			while (iter != commands.end ()) {
				(*iter++)->execute ();
			}
		}

};

int main () {
	Commander commander;
	commander.add (new DogSpeak);
	commander.add (new CatSpeak);
	commander.add (new BirdSpeak);
	
	commander.run ();
} ///;~

