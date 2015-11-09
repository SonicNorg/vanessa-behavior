﻿# encoding: utf-8
# language: ru

@IgnoreOn82Builds

Функционал: Я хочу работать с командным интерфейсом 1С 8.3.x

Как Разработчик я хочу
Чтобы у меня была библиотека для стандартных команд 1С при работе с UI 1С 8.3.x
чтобы я мог запускать автосгенерированные фичи по действиям пользователя без написания кода


Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И    Я закрыл все окна клиентского приложения
	
	

Сценарий: Нажатие кнопок командного интерфейса
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код       | Наименование       |
		| 000000002 | Тестовый Элемент 1 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Код       | Наименование      |
		| 000000002 | ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с заголовком "Реквизит число" я ввожу текст "12.34"
	И     В открытой форме в поле с заголовком "Реквизит строка" я ввожу текст "тест"
	И     В открытой форме в поле с заголовком "Реквизит дата" я ввожу текст "08.04.1981"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	
	#Работа с ТЧ
	
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст "56,78"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     Элемент Справочника1 с именем "Тестовый Элемент 1" записался корректно


	
#Сценарий: Закрыть сеанс 1С с ключом TESTCLIENT	
#	Дано я закрываю сеанс TESTCLIENT	