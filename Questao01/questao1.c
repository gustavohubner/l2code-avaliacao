#include <stdio.h>

void move(int dir, int x, int y, int *posX, int *posY, char c);

int main()
{
    int x, y, posX = 0, posY = 0;
    unsigned char dir = 0;
    char c;
    char *orient = "NLSO";

    scanf("%d", &x);
    scanf("%d", &y);
    getchar(); // consome '\n'

    while ((c = getchar()) != EOF)
    {
        if (c == '\n')
            break; // termina ao encontrar '\n' ou EOF

        switch (c)
        {
        case 'D':
            dir = dir + 1;
            break;
        case 'E':
            dir = dir - 1;
            break;
        default:
            move(dir % 4, x, y, &posX, &posY, c);
        }
    }

    printf("%c %d %d\n", orient[dir % 4], posX, posY);
    return 0;
}

void move(int dir, int x, int y, int *posX, int *posY, char c)
{
    // caso movimento para frente, soma 1, caso contrário soma -1.
    int sum = ((c == 'F') ? 1 : -1);

    switch (dir)
    {
    case 0:
        *posY = *posY + sum;
        break;
    case 1:
        *posX = *posX + sum;
        break;
    case 2:
        *posY = *posY - sum;
        break;
    case 3:
        *posX = *posX - sum;
        break;
    }

    if (*posX == x)
        (*posX)--;
    if (*posY == y)
        (*posY)--;

    if (*posX < 0)
        *posX = 0;
    if (*posY < 0)
        *posY = 0;
}
