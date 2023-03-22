---
title: "Как научиться писать на Go?"
date: 2023-03-22T15:18:14+07:00
draft: true
---

Под целью обучения считаем работу в компании, по факту способность писать код по требованиям. Подразумеваем, что человек уже на чем-то программировал до и нужно научить только идиоматично писать на Go. Самое важное наверное, что понадобиться для изучения,  это английский язык и часы, которые непосредственно будут выделяться на обучение.

Начало
Можно попробовать что-то написать в https://go.dev/tour/welcome/1 и посмотреть примеры кода в https://gobyexample.com/

Потом прочитать https://github.com/golang/go/wiki/CodeReviewComments и https://go.dev/doc/effective_go. Это будет первый раз, где-то через месяц придется читать снова.

Решение небольших по объему задач
Полезно, потому что объем небольшой, не нужно заморачиваться структуризацией репозитория, контрактами и тд. Чаще всего это CLI утилиты которые каждый уже писал когда-то:

https://www.youtube.com/c/JustForFunc/videos
https://gophercises.com/
После 5-10 таких программ, можно снова прочитать https://github.com/golang/go/wiki/CodeReviewComments и https://go.dev/doc/effective_go.

А так же можно начать читать книгу http://www.gopl.io/

Альтернатива - решение задач на leetcode, это в целом полезно, но я бы напирал на инженерные задачи больше, тк они объединяют и этот аспект и аспект программы, которая может делать что-то полезное. Например телеграм бот, мониторинговый агент, планировщик задач, веб-краулер, поисковый движок, in-memory база данных и тд

Веб сервисы
Чаще всего та тема из-за которой вообще интересуются Go. Здесь начинается большинство вопросов по структуризации проекта, но если пройден предыдущий этап, то как минимум писать простой код человек уже умеет.

Познакомиться с базой можно в статья на офф сайте https://go.dev/doc/articles/wiki/. Следом за ним можно посмотреть как устроен более продвинутый роутер и попробовать это https://github.com/go-chi/chi/tree/master/_examples/rest. Пока без структуризации вообще.



О количестве проблем со структуризацией кода, которые ждут разработчиков можно понять из доклада  https://www.youtube.com/watch?v=IV0wrVb31Pg

Далее можно прочитать статьи по дизайну пакетов и репозитория:

https://rakyll.org/style-packages/
https://www.ardanlabs.com/blog/2017/02/package-oriented-design.html
https://peter.bourgon.org/go-best-practices-2016/#repository-structure
После этого можно пробовать создать что-то свое и быть готовым переписать код раза 4 полностью. Здесь нет какого-то конкретного туториала, только опыт и насмотренность проектов.

Можно воспользоваться моими списками и выбрать то, что можно использовать в проекте, а что лучше пока обойти стороной:

https://github.com/stars/agalitsyn/lists/recommeded-packages-for-go
https://github.com/stars/agalitsyn/lists/not-recommened-packages-for-go
Concurrency
Коротко, о том, когда стоит вообще изучать эту тему:

Все предыдущие этапы
==> вы здесь <==
Concurrency

Начинать нужно снова с маленьких программ и пользоваться флагом -race для запуска тестов или в go run. Это поможет показать дедлоки быстрее. Так же желателен debugger и дальнейшее знакомство с tracer. Использование concurrency не тривиально и не всегда улучшает и ускоряет код, а чаще всего наоборот. Можно посмотреть видео https://www.youtube.com/watch?v=ySy3sR1LFCQ

Самое частое применение в работе это pipeline и worker pool. Так же здесь нужно познакомиться как использовать context.


Еще можно почитать гайд https://github.com/uber-go/guide/blob/master/style.md


Культовые доклады по этой теме

Concurrency is not Parallelism by Rob Pike https://www.youtube.com/watch?v=oV9rvDllKEg
Google I/O 2012 - Go Concurrency Patterns https://www.youtube.com/watch?v=f6kdp27TYZs
GopherCon 2016: Ivan Danyliuk - Visualizing Concurrency in Go  https://www.youtube.com/watch?v=KyuFeiG3Y60 и https://divan.dev/posts/go_concurrency_visualize/
Подробности имплементации языка
По-хорошему этот этап зависит от вашего опыта. Некоторые разработчики с него начинают, особенно те, кто пришел с С и С++. Но данный гайд опирается именно на изучение через практику и основан на опыте обучения людей пришедших с языков типо python, php, javascript и тд, скорее всего это те люди, которые никогда сильно не изучали, как работают структуры данных языка или примитивы синхронизации, разве что в универе, если была закончено профильное обучение. Я бы рекомендовал оттянуть его немного на потом, и уже после некоторой практики на го начать это изучать с вопросом "а как же написанные мной программы на самом деле работают". Это поможет по-новому взглянуть на свой старый код и лучше писать новый.

Нюансы синтаксиса
http://devs.cloudimmunity.com/gotchas-and-common-mistakes-in-go-golang/

Структуры данных
https://rakyll.org/typesystem/

https://research.swtch.com/godata

Интерфейсы, каналы
https://research.swtch.com/interfaces

http://dmitryvorobev.blogspot.com/2016/08/golang-channels-implementation.html

Память
https://go.dev/ref/mem

https://povilasv.me/go-memory-management/

Go scheduler
https://www.ardanlabs.com/blog/2018/08/scheduling-in-go-part2.html

https://docs.google.com/document/d/1TTj4T2JO42uD5ID9e89oa0sLKhJYD0Y_kqxDv3I3XMw/edit

http://golangshow.com/episode/2015/09-03-016/

Диагностика кода, pprof, execution tracer и flame graph'ы
Много материала по каждому из них, но есть статья для ознакомления https://go.dev/doc/diagnostics

Другие материалы
Youtube, каналы с go конференциями
dotGo https://www.youtube.com/user/dotconferences/playlists
Golang NYC Meetup https://www.youtube.com/c/GolangNYCMeetup/videos
GopherCon Russia https://www.youtube.com/channel/UCq-OB01F8YnS-FJpeJRCvMQ/videos
GopherCon UK https://www.youtube.com/c/GopherConUK/videos
Офф канал https://www.youtube.com/c/golang/videos
Gopher Academy https://www.youtube.com/c/GopherAcademy/videos
Поискать самому, докладов много и не на крупных каналах.
Блог Дейва Чейни https://dave.cheney.net/
Все материалы из репозитория https://github.com/ardanlabs/gotraining
