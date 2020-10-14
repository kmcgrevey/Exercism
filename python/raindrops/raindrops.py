import code


def convert(number):
    global sound
    sound = ""

    pling(number)
    plang(number)
    plong(number)
    # code.interact(local=dict(globals(), **locals()))
    if sound == "":
        return f"{number}"
    else:
        return sound


def pling(number):
    if number % 3 == 0:
        global sound
        sound += 'Pling'
        # code.interact(local=dict(globals(), **locals()))


def plang(number):
    if number % 5 == 0:
        sound + 'Plang'
        # code.interact(local=dict(globals(), **locals()))


def plong(number):
    if number % 7 == 0:
        sound + 'Plong'
        # code.interact(local=dict(globals(), **locals()))
