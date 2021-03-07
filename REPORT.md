## Laboratory work II


## Tasks

- [ ] 1. Создать публичный репозиторий с названием **lab02** и с лиценцией **MIT**
- [ ] 2. Сгенирировать токен для доступа к сервису **GitHub** с правами **repo**
- [ ] 3. Ознакомиться со ссылками учебного материала
- [ ] 4. Выполнить инструкцию учебного материала
- [ ] 5. Составить отчет и отправить ссылку личным сообщением в **Slack**



## Homework

### Part I

1. Создайте пустой репозиторий на сервисе github.com (или gitlab.com, или bitbucket.com).

```sh
Репозиторий был создан с названием: lab02new
```
2. Выполните инструкцию по созданию первого коммита на странице репозитория, созданного на предыдещем шаге.

```sh
echo "# lab02new" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/navckin/lab02new.git
git push -u origin main
```
3. Создайте файл `hello_world.cpp` в локальной копии репозитория (который должен был появиться на шаге 2). Реализуйте программу **Hello world** на языке C++ используя плохой стиль кода. Например, после заголовочных файлов вставьте строку `using namespace std;`.

```sh
Для создания нового файла используем команду: nano hello_world.cpp
Файл заполняем данными, а именно кодом:
#include <iostream>

using namespace std;

int main() 
{ 
    cout << "Hello world!" << endl;
    return 1; 
}
```
4. Добавьте этот файл в локальную копию репозитория.

```sh
Используем команду: git add hello_world.cpp
```
5. Закоммитьте изменения с *осмысленным* сообщением.

```sh
Используем команду: git commit -m"Added file .cpp"
```
6. Изменитьте исходный код так, чтобы программа через стандартный поток ввода запрашивалось имя пользователя. А в стандартный поток вывода печаталось сообщение `Hello world from @name`, где `@name` имя пользователя.

```sh
Для того, чтобы изменить написанное в файле вызываем команду: edit hello_world.cpp или через nano
Делаем изменеия:

#include <iostream>
using namespace std;
int main()
{ string name;
 cin>>  name;
    cout << "Hello World! from << name << endl;
}
```
7. Закоммитьте новую версию программы. Почему не надо добавлять файл повторно `git add`?

```sh
Есть предположение, что можно поступить след. образом:
Если мы, к примеру, хотим опустить индексирование, то есть использование команды git add (как бы обновления и сохранения файла), можно использовать такую команду: git commit -a -m "somemassage". Параметр -а сделает так, что  гит сам проиндексирует каждый уже отслеживаемый на момент коммита файл. НО может произойти так, что все файлы закоммитится одним и тем же сообщением. 
```

8. Запуште изменения в удалёный репозиторий.
```sh
Испольузем команду: git push origin main
```

9. Проверьте, что история коммитов доступна в удалёный репозитории.

```sh
В репозитории гитхаба появился файл с последним добавленным коммитом.
Историю коммитов можно проверить при помощи команды git log.
Все доступно.
```

### Part II

**Note:** *Работать продолжайте с теми же репоззиториями, что и в первой части задания.*
1. В локальной копии репозитория создайте локальную ветку `patch1`.

```sh
Используем команду: git checkout -b patch1; то есть мы создали новую ветку и сразу переключились на нее.
Получим сообщение: Переключено на новую ветку «patch1»
```
2. Внесите изменения в ветке `patch1` по исправлению кода и избавления от `using namespace std;`.
3. **commit**, **push** локальную ветку в удалённый репозиторий.
4. Проверьте, что ветка `patch1` доступна в удалёный репозитории.

```sh
Команды для пунктов 2,3,4:
nano hello_world.cpp
git add hello_world.cpp
git commit -m"Changed the mistakes: added std::"
git push
fatal: Текущая ветка patch1 не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте
git push —set-upstream origin patch1
Используем эту команду:
git push —set-upstream origin patch1
Теперь:
Ветка «patch1» отслеживает внешнюю ветку «patch1» из «origin».
git push
Проверяем:
git status
На ветке patch1
Ваша ветка обновлена в соответствии с «origin/patch1».

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	.hello_world.cpp.swm
	.hello_world.cpp.swn
	.hello_world.cpp.swo
	hello_world.cpp.save
	hello_world.cpp.save.1
	lab02/
	pr/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
В репозитории гитхаба на новой ветке файлы сущестуют и сама ветка тоже.
```
5. Создайте pull-request `patch1 -> master`.
```sh
Создан на гитхабе.
```
6. В локальной копии в ветке `patch1` добавьте в исходный код комментарии.
7. **commit**, **push**.
8. Проверьте, что новые изменения есть в созданном на **шаге 5** pull-request

```sh
 Команды для 6,7,8 пунктов:
nano hello_world.cpp
git add hello_world.cpp
git commit -m"Added some comments to the file"
[patch1 7ee9ec6] Added some comments to the file
 1 file changed, 1 insertion(+), 1 deletion(-)
git push
В pull-request есть изменения.
```
9. В удалённый репозитории выполните  слияние PR `patch1 -> master` и удалите ветку `patch1` в удаленном репозитории.

```sh
Выполнение команды:
git checkout main
git merge patch1
git branch -d patch1 - удаление локальной ветки, исполнение этой команды нужно в пунтке 12.
Существует команда для удаление ветки в удаленном репозитории:
git push origin --delete patch1
Команда выполнена:
Username for 'https://github.com': navckin
Password for 'https://navckin@github.com': 
To https://github.com/navckin/lab02new.git
 - [deleted]         patch1

```
10. Локально выполните **pull**.

```sh
Команда: git pull
Сообщение: Уже обновлено.
```
11. С помощью команды **git log** просмотрите историю в локальной версии ветки `master`.

```sh
git log main
commit 7ee9ec6c2d295440a300acf4ba3c397e72294a82 (HEAD -> main, origin/patch1)
Author: navckin <>
Date:   Fri Mar 5 23:51:25 2021 +0300

    Added some comments to the file

commit 120ded427fe77be84b8bfd7329fe30f622db638b
Author: navckin <>
Date:   Fri Mar 5 23:10:30 2021 +0300

    Changed the mistakes: added std::

commit 746cccba22f5903e3faba9e26124dc9282dcf230 (origin/main)
Author: navckin <>
Date:   Fri Mar 5 22:35:54 2021 +0300

    Changed the mistakes made during coding

commit 55a7db6e56e230e786a5255c4f80474162961a32
Author: navckin <>
Date:   Fri Mar 5 22:17:43 2021 +0300

    Added new commands to the file .cpp

commit 4181284d707984ef9b7b55cfdc95c61291fbdc79
Author: navckin <>
Date:   Thu Mar 4 15:32:11 2021 +0300

     Added file .cpp

commit 28a64d94cdbfc31bebfcf6533ec1ce1530c922ea
Author: navckin <n>
Date:   Thu Mar 4 15:14:31 2021 +0300

    first commit
```

12. Удалите локальную ветку `patch1`.

```sh
Команда: git branch -d patch1
```

### Part III

**Note:** *Работать продолжайте с теми же репоззиториями, что и в первой части задания.*
1. Создайте новую локальную ветку `patch2`.

```sh
Команда: git checkout -b patch2
```
2. Измените *code style* с помощью утилиты [**clang-format**](http://clang.llvm.org/docs/ClangFormat.html). Например, используя опцию `-style=Mozilla`.

```sh
Команды:
clang-format -style=Mozilla hello_world.cpp
Требудется clang-format
Команда:
sudo apt install clang-format
```
3. **commit**, **push**, создайте pull-request `patch2 -> master`.

```sh
 Команды:
nano hello_world.cpp
git add hello_world.cpp
git commit -m"Cahnged style"
[patch1 7ee9ec6] Cahnged style
 1 file changed, 1 insertion(+), 1 deletion(-)
git push
ругается: 
atal: Текущая ветка patch2 не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream origin patch2
Выполянем команду:
git push --set-upstream origin patch2
На гитхабе создан пулл реквест.
```

4. В ветке **master** в удаленном репозитории измените комментарии, например, расставьте знаки препинания, переведите комментарии на другой язык.

```sh
Если рассматривать ситуацию, что два человека работают над кодом, то это задание можно сделать ручками, перейдя на гитхаб и изменив там код.
В итоге на гитхабе выбрать эту опцию:
 Commit directly to the main branch.
Задание выполнено.
Можно же прописать несколько команд, предварительно переключившись на ветку main
nano hello_world.cpp
git add hello_world.cpp
git commit -m"Added new comments for the task N4 part 3"
git push
```

5. Убедитесь, что в pull-request появились *конфликтны*.

```sh
На гитхабе в разделе пулл-реквеста появилось сообщение:
Конфликт есть.
This branch has conflicts that must be resolved
Use the web editor or the command line to resolve conflicts.
Conflicting files
hello_world.cpp
Для того, чтобы увидеть, где именно ошибки при слиянии в терминале, можно ввести команду:
git am --show-current-patch
Сам конфликт:
Применение: Changed the mistakes: added std::
Использую индекс для реконструкции базового дерева…
M	hello_world.cpp
Откат к применению изменений к базовому коммиту с помощью трехходового слияния…
Автослияние hello_world.cpp
КОНФЛИКТ (содержимое): Конфликт слияния в hello_world.cpp
error: Не удалось слить изменения.
Это сообщение на терминале можно увидеть после попытки вызова команды:
git pull --rebase origin main
```

6. Для этого локально выполните **pull** + **rebase** (точную последовательность команд, следует узнать самостоятельно). **Исправьте конфликты**.
```sh

```
7. Сделайте *force push* в ветку `patch2`
8. Убедитель, что в pull-request пропали конфликтны. 
9. Вмержите pull-request `patch2 -> master`.


na
```
Copyright (c) 2015-2020 The ISC Authors
```
