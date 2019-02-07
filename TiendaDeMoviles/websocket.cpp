#include "websocket.h"
#include <QtCore/QDebug>

QT_USE_NAMESPACE

websocket::websocket(const QUrl &url, bool debug, QObject *parent) :
    QObject(parent),
    m_url(url),
    m_debug(debug)
{
    if (m_debug)
        qDebug() << "WebSocket server:" << url;
    connect(&m_webSocket, &QWebSocket::connected, this, &websocket::onConnected);
    connect(&m_webSocket, &QWebSocket::disconnected, this, &websocket::closed);
    m_webSocket.open(QUrl(url));
}

void websocket::onConnected()
{
    if (m_debug)
        qDebug() << "WebSocket connected";
    connect(&m_webSocket, &QWebSocket::textMessageReceived,
            this, &websocket::onTextMessageReceived);
    m_webSocket.sendTextMessage(QStringLiteral("Hello, world!"));
}

void websocket::onTextMessageReceived(QString message)
{
    if (m_debug)
        qDebug() << "Message received:" << message;
    m_webSocket.close();
}
