word = "Вода в пруде почернела, и легкая лодочка уже скользила по ней, и слышался плеск весла и смешки какой-то гражданки в лодочке. В аллеях на скамейках появилась публика, но опять-таки на всех трех сторонах квадрата, кроме той, где были наши собеседники"


def main():
    from math import log2
    global word
    word = word.lower()\
        .replace("ё", "е")

    nword = ""
    for i in range(1071, 1104):
        if i == 1071:
            i = 32
        nword += chr(i) * word.count(chr(i))
    word = nword

    print("_________________________________")
    print("| ## |let| ch | pi    |-pilog2pi|")

    N, spi, Icp = len(word), 0, 0
    for i in range(1071, 1104):
        print("|", formatout(i - 1071, 2), end=" ")
        if i == 1071:
            i = 32
        n = word.count(chr(i))
        pi = round(n/N, 3)
        if n != 0:
            pilog2pi = round((n/N)*log2(n/N), 3)
        else:
            pilog2pi = -0.0
        spi += pi
        Icp += pilog2pi
        print("|", " "+chr(i)+" " if i != 32 else '"_"', "| ",
              formatout(n, 2), " | ",
              formatout(pi, 5), " | ",
              formatout(pilog2pi * -1, 7), " | ", sep="")
    print("‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾")
    Icp = Icp * -1
    print("Количество символов N =", N)
    print("Сумма pi (для проверки) spi =", round(spi, 3))
    print("По формуле Шеннона Iср =", round(Icp, 3), "бит")


def formatout(ch, num):
    return (str(ch) + " " * (num - len(str(ch))))


if __name__ == "__main__":
    main()
