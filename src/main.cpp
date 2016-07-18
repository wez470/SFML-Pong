#include <SFML/Graphics.hpp>
#include <cstdlib>

#define WIDTH 800
#define HEIGHT 600
#define BALL_RADIUS 8.0f
#define PADDLE_SPEED 600.0f
#define BALL_SPEED 600.0f
#define EDGE_BUFFER 5.0f

int main(int argc, char** argv) {
    sf::Vector2f paddleSize(20, 100);

    // Set window size
    sf::RenderWindow window(sf::VideoMode(WIDTH, HEIGHT, 32), "SFML Pong",
                            sf::Style::Titlebar | sf::Style::Close);
    window.setVerticalSyncEnabled(true);

    // Create left paddle
    sf::RectangleShape leftPaddle;
    leftPaddle.setSize(paddleSize);
    leftPaddle.setFillColor(sf::Color::White);
    leftPaddle.setOrigin(paddleSize / 2.0f);

    // Create right paddle
    sf::RectangleShape rightPaddle;
    rightPaddle.setSize(paddleSize);
    rightPaddle.setFillColor(sf::Color::White);
    rightPaddle.setOrigin(paddleSize / 2.0f);
    
    // Create ball
    sf::CircleShape ball;
    ball.setRadius(BALL_RADIUS);
    ball.setFillColor(sf::Color::White);
    ball.setOrigin(BALL_RADIUS / 2, BALL_RADIUS / 2);
    
    // Load font
    sf::Font font;
    if (!font.loadFromFile("../res/sansation.ttf")) {
        return EXIT_FAILURE;
    }

    // Initialize the pause message
    sf::Text pauseMessage;
    pauseMessage.setFont(font);
    pauseMessage.setCharacterSize(40);
    pauseMessage.setString("Press space to start the game");
    sf::FloatRect textRect = pauseMessage.getLocalBounds();
    pauseMessage.setOrigin(textRect.left + textRect.width / 2.0f,
            textRect.top + textRect.height / 2.0f);
    pauseMessage.setPosition(sf::Vector2f(WIDTH / 2.0f, HEIGHT / 2.0f));
    pauseMessage.setPosition(WIDTH / 2.0f, HEIGHT / 2.0f);

    sf::Clock clock;
    bool isPlaying = false;
    
    // Main Game Loop
    while (window.isOpen()) {
        sf::Event event;

        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed ||
               ((event.type == sf::Event::KeyPressed) && (event.key.code == sf::Keyboard::Escape))) {
                window.close();
            }

            // Space key pressed: play
            if ((event.type == sf::Event::KeyPressed) && (event.key.code == sf::Keyboard::Space))
            {
                if (!isPlaying)
                {
                    isPlaying = true;
                    clock.restart();

                    leftPaddle.setPosition(10 + paddleSize.x / 2, HEIGHT / 2);
                    rightPaddle.setPosition(WIDTH - 10 - paddleSize.x / 2, HEIGHT / 2);
                    ball.setPosition(WIDTH / 2, HEIGHT / 2);
                }
            }

        }

        if (isPlaying) {
            float deltaTime = clock.restart().asSeconds();

            // Move left paddle
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::W) &&
               (leftPaddle.getPosition().y - paddleSize.y / 2 > EDGE_BUFFER)) {
                leftPaddle.move(0.0f, -PADDLE_SPEED * deltaTime);
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::S) &&
               (leftPaddle.getPosition().y + paddleSize.y / 2 < HEIGHT - EDGE_BUFFER)) {
                leftPaddle.move(0.0f, PADDLE_SPEED * deltaTime);
            }

            // Move right paddle
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up) &&
               (rightPaddle.getPosition().y - paddleSize.y / 2 > EDGE_BUFFER)) {
                rightPaddle.move(0.0f, -PADDLE_SPEED * deltaTime);
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down) &&
               (rightPaddle.getPosition().y + paddleSize.y / 2 < HEIGHT - EDGE_BUFFER)) {
                rightPaddle.move(0.0f, PADDLE_SPEED * deltaTime);
            }

        }

        window.clear(sf::Color::Black);

        if (isPlaying) {
            window.draw(leftPaddle);
            window.draw(rightPaddle);
            window.draw(ball);
        }
        else {
            window.draw(pauseMessage);
        }

        window.display();
    }
}
