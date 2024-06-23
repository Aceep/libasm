#include <stdio.h>

extern size_t ft_strlen(const char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);

int main() {
    const char *test_str = "Hello, Assembly!";
    size_t length = ft_strlen(test_str);
    printf("The length of the string is: %zu\n", length);
    ft_write(1, test_str, length);

    return 0;
}
