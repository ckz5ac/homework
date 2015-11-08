n = 0
n = n > 0


def hs(n):
    count = 0
    while n != 1:
        print(n),
        if n % 2 == 0:
            n = n // 2
        else:
            n = n*3+1
        count = count + 1
    return count
