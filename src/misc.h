#ifndef is_misc_included
#define is_misc_included

//receives "foo/bar/music" and returns "foo/bar/"
//The returned pointer should be freed.
char * __dirname(const char *path) {
    const size_t length = strlen(path) + 1;
    char *ret = (char *)malloc(length);
    int i = length - 1;
    for ( ; i >= 0; --i) {
        if (path[i] == '/') {
            break;
        }
    }
    int j = 0;
    if (i < 0) { //when `path` doesn't include a slash
        ;
    } else {
        for ( ; j <= i; ++j) {
            ret[j] = path[j];
        }
    }
    ret[j] = '\0';
    return ret;
}

#endif

