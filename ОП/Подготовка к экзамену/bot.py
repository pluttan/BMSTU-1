import telebot
import os.path
from time import sleep
TOKEN = ''
bot = telebot.TeleBot('5935129128:AAF3MrWB70RAgkrbgaaCNAbcOFZHEGN2n8A')


@bot.message_handler(content_types=['text'])
def get_text_messages(message):
    lastsize = 0
    while True:
        size = os.path.getsize(
            '/Users/pluttan/Desktop/_Сем1/BMSTU-1/ОП/Подготовка к экзамену/conf/examOP.pdf')
        if lastsize != size:
            sleep(5)
            with open("/Users/pluttan/Desktop/_Сем1/BMSTU-1/ОП/Подготовка к экзамену/conf/examOP.pdf", "rb") as misc:
                f = misc.read()
            bot.send_document(message.from_user.id, open("/Users/pluttan/Desktop/_Сем1/BMSTU-1/ОП/Подготовка к экзамену/conf/examOP.pdf", "rb"),
                              caption='Этот файл специально для тебя!')
            lastsize = size
            sleep(10)


def main():
    try:
        bot.polling(none_stop=True, interval=0)
    except:
        main()


main()
