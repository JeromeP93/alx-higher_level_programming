#include <stdio.h>
#include "lists.h"

/**
 * is_palindrome - checks if a linked list is a palindrome
 * @head: double pointer to the head of the linked list
 * Return: 1 if palindrome, 0 otherwise
 */
int is_palindrome(listint_t **head)
{
    listint_t *current = *head;
    int values[2048];
    int size = 0, i = 0;

    if (*head == NULL)
        return (1);

    while (current)
    {
        values[size++] = current->n;
        current = current->next;
    }

    while (i < size / 2)
    {
        if (values[i] != values[size - i - 1])
            return (0);
        i++;
    }

    return (1);
}
