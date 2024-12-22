## Лабораторная работа по теме "Команда grep"

## 1. Введение в команду grep:

Команда grep (Global Regular Expression Print) — это мощный инструмент в операционных системах Unix и Linux. Она используется для поиска строк, которые соответствуют заданному шаблону, и позволяет пользователям фильтровать текстовые данные, находя нужную информацию в файлах.

## 2. Простое задание: Поиск строк в файле:

- Научиться использовать команду grep для поиска строк в текстовом файле.

1. Создание текстового файла:
Создайте файл с именем example.txt и добавьте в него несколько строк текста. Для этого используйте следующую команду:

```
echo -e "Hello World\nThis is a test file\nGrep is powerful\nGoodbye World" > example.txt
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20t%E1%BA%A1o%20example.txt.png)


2. Поиск строки:
Используйте команду grep, чтобы найти строки, содержащие слово "World":

```
grep "World" example.txt
```

Ожидаемый вывод:

```
Hello World
Goodbye World
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20T%C3%ACm%20ki%E1%BA%BFm%20d%C3%B2ng.png)

3. Поиск без учета регистра:
Попробуйте использовать grep с флагом -i, чтобы сделать поиск нечувствительным к регистру:

```
grep -i "world" example.txt
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20T%C3%ACm%20ki%E1%BA%BFm%20kh%C3%B4ng%20ph%C3%A2n%20bi%E1%BB%87t%20ch%E1%BB%AF%20hoa%20ch%E1%BB%AF%20th%C6%B0%E1%BB%9Dng.png)

4. Вывод номеров строк:
Используйте флаг -n, чтобы показать номера строк, где найдено совпадение:

```
grep -n "is" example.txt
```

Ожидаемый вывод:

```
2:This is a test file
3:Grep is powerful
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20Hi%E1%BB%83n%20th%E1%BB%8B%20s%E1%BB%91%20d%C3%B2ng.png)

## 3. Задача на выполнение

- Напишите скрипт, который ищет все строки в файле, содержащие заданное слово, и выводит их в новый файл.

1. Создание скрипта:

- Создать файл, использовать touch:

```
touch search.sh
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20touch%20search.sh.png)

- Использовать nano:

```
nano search.sh
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20nano%20search.sh.png)

- Создайте файл search.sh и добавьте следующий код:

```
#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <слово> <файл>"
    exit 1
fi

grep "$1" "$2" > results.txt
echo "Результаты поиска сохранены в results.txt"
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20code%20grep.png)

2. Сделайте скрипт исполняемым:
Для этого выполните следующую команду:

```
chmod +x search.sh
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20chmod%20%2Bx%20search.sh.png)

3. Запустите скрипт:
Запустите скрипт с заданным словом и файлом:

```
./search.sh "test" example.txt
```

Ожидаемый вывод:

```
Результаты поиска сохранены в results.txt
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/h%C3%ACnh%20%E1%BA%A3nh%20search.sh%20test%20example.txt.png)

4. Проверьте содержимое файла results.txt:
Чтобы просмотреть содержимое этого файла, вы можете использовать команду cat:

```
cat results.txt
```

Ожидаемый вывод:

```
This is a test file
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/k%E1%BA%BFt%20qu%E1%BA%A3%20results.txt.png)

5. Проверьте содержимое файла example.txt:
Чтобы просмотреть содержимое этого файла, вы можете использовать команду cat:

```
cat example.txt
```

Ожидаемый вывод:

```
Hello World
This is a test file
Grep is powerful
Goodbye World
```

![image](https://github.com/haha523/grep_lab/blob/c0136675e7e3a32868bee63817ad20a4a6b6fe1b/png%20for%20lab/k%E1%BA%BFt%20qu%E1%BA%A3%20example.txt.png)


## 4. Ссылки на материалы:

https://man7.org/linux/man-pages/man1/grep.1.html

https://www.regular-expressions.info/

https://tldp.org/LDP/abs/html/






