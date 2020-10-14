import code


def convert(number):
    global sound
    sound = ""

    pling(number)
    plang(number)
    plong(number)
    if sound == "":
        return f"{number}"
    else:
        return sound


def pling(number):
    if number % 3 == 0:
        global sound
        sound += 'Pling'


def plang(number):
    if number % 5 == 0:
        global sound
        sound += 'Plang'


def plong(number):
    if number % 7 == 0:
        global sound
        sound += 'Plong'
