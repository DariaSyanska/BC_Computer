### Проектування прототипу програмних класів

#### Опис атрибутів програмних класів (Варіант 8)

| Клас | Атрибут | Тип даних | Видимість | Опис |
|:--- |:--- |:--- |:--- |:--- |
| **User** | userEmail | String | Private (-) | Пошта для авторизації |
| | userPassword | String | Private (-) | Хеш пароля |
| | wordCountKPI | Integer | Private (-) | План кількості слів |
| **TextContent** | title | String | Private (-) | Назва твору |
| | content | String | Private (-) | Текст твору |
| | author | User | Private (-) | Автор (посилання на клас User) |
| **Notification**| message | String | Public (+) | Текст повідомлення |
| | timestamp | DateTime | Private (-) | Час генерації |

![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/DariaSyanska/BC_Computer/laboratory-work-5/2-SoftwareDesign/2.6-UMLProgramClasses/UMLProgramClasses.puml)
