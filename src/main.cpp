#include <SFML/Graphics.hpp>

using namespace std;

int main(int argc, char** argv) {
    sf::Window app(sf::VideoMode(800, 600), "Pong");

    while (app.isOpen()) {
        sf::Event event;

        while (app.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                app.close();
            }
        }

        app.display();
    }
}
