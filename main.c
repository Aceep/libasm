#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

extern size_t ft_strlen(const char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fd, void *buf, size_t count);
extern char *ft_strcpy(char *dest, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);

int main() {
    const char *test_str = "Hello, Assembly!\n";
    size_t length = ft_strlen(test_str);
    printf("The length of the string is: %zu\n", length);
    ft_write(1, test_str, length);
    char *str_1 ="Hello";
    char *str_2 ="Hi";
    ft_strcmp(str_1, str_2);
    return 0;
}
