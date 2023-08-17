#include <Python.h>

void print_python_list(PyObject *p)
{
PyListObject *list = (PyListObject *)p;
Py_ssize_t size = PyList_Size(p);
Py_ssize_t allocated = list->allocated;

printf("[*] Python list info\n");
printf("[*] Size of the Python List = %ld\n", size);
printf("[*] Allocated = %ld\n", allocated);

for (Py_ssize_t i = 0; i < size; i++)
{
PyObject *element = PyList_GetItem(p, i);
const char *typeName = Py_TYPE(element)->tp_name;
printf("Element %ld: %s\n", i, typeName);
}
}

void print_python_bytes(PyObject *p)
{
if (!PyBytes_Check(p))
{
printf("[.] bytes object info\n");
printf("  [ERROR] Invalid Bytes Object\n");
return;
}

Py_ssize_t size = PyBytes_GET_SIZE(p);
printf("[.] bytes object info\n");
printf("  size: %ld\n", size);

char *str = PyBytes_AsString(p);
printf("  trying string: %s\n", str);

printf("  first 10 bytes:");
for (Py_ssize_t i = 0; i < size && i < 10; i++)
{
printf(" %02x", (unsigned char)str[i]);
}
printf("\n");
}
