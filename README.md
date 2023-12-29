# 照片整理器

这是一个Python项目，用于根据日期和其他条件整理照片文件。

## 功能

- 根据照片的拍摄日期，将照片文件按年月分类并移动到相应的文件夹中。
- 根据照片的分辨率，将低分辨率的照片文件移动到一个单独的文件夹中。
- 根据照片的大小，将小于指定阈值的照片文件移动到一个单独的文件夹中。
- 根据照片的哈希值，将重复的照片文件移动到一个单独的文件夹中。
- 根据照片的文件名，将截屏文件移动到一个单独的文件夹中。
- 使用SQLite数据库存储照片的文件名和哈希值，以便检查重复性。
- 使用日志文件记录照片文件的操作情况。

## 安装


## 使用方法

- 将你的照片文件放在/photos/data目录下的一个或多个源文件夹中。
- 在/photos/config目录下的settings.ini文件中，设置你想要的参数，如支持的格式、文件夹名、阈值等。
- 运行photos_organizer.py文件，等待程序完成照片文件的整理。
- 在/photos/data目录下的一个或多个目标文件夹中，查看整理后的照片文件。
- 在/photos/logs目录下，查看日志文件，了解照片文件的操作情况。


# 照片整理器 Photo Organizer

![照片整理器徽标](https://www.freecodecamp.org/news/how-to-write-a-good-readme-file/)

照片整理器是一个Python项目，用于根据日期和其他条件整理照片文件，方便你查看和管理你的照片。

## 简介

你是否有过这样的困扰，你的照片文件夹里有很多照片，但是你不知道它们是什么时候拍的，或者有没有重复的，或者有没有低质量的，或者有没有截屏的？你是否想要把你的照片按照拍摄日期分类，或者把不同条件的照片分别放到不同的文件夹里，或者把重复的照片删除，或者把截屏的照片移走？如果你有这样的需求，那么照片整理器就是为你设计的。

照片整理器的功能是根据照片的拍摄日期，将照片文件按年月分类并移动到相应的文件夹中。同时，照片整理器还可以根据照片的分辨率、大小、重复性和截屏，将照片文件移动到不同的文件夹中，以便你对它们进行进一步的处理。照片整理器还使用了SQLite数据库存储照片的文件名和哈希值，以便检查重复性。照片整理器还使用了日志文件记录照片文件的操作情况。

照片整理器是一个简单而实用的项目，它可以帮助你管理你的照片文件，节省你的时间和空间，提高你的效率和体验。

## 依赖

- Python 3
- PIL
- exifread
- pyheif

## 安装和配置

- 克隆或下载本项目的代码到你的本地。
- 在/photos/config目录下的settings.ini文件中，设置你想要的参数，如支持的格式、文件夹名、阈值等。
- 将你的照片文件放在/photos/data目录下的一个或多个源文件夹中。
- 如果你想使用自己的照片整理器徽标，可以替换/photos目录下的logo.png文件。

## 使用方法

- 运行photos_organizer.py文件，等待程序完成照片文件的整理。
- 在/photos/data目录下的一个或多个目标文件夹中，查看整理后的照片文件。
- 在/photos/logs目录下，查看日志文件，了解照片文件的操作情况。

## 运行效果

下面是一些展示本项目运行效果的截图和动图：

- 这是源文件夹中的照片文件，有不同的格式、分辨率、大小、重复性和截屏：

![源文件夹](https://packaging.python.org/guides/making-a-pypi-friendly-readme/)

- 这是运行photos_organizer.py文件后，目标文件夹中的照片文件，按照拍摄日期分类并移动到相应的文件夹中：

![目标文件夹](https://www.makeareadme.com/)

- 这是运行photos_organizer.py文件后，低分辨率文件夹中的照片文件，分辨率低于指定的阈值：

![低分辨率文件夹](https://coding-boot-camp.github.io/full-stack/github/professional-readme-guide/)

- 这是运行photos_organizer.py文件后，小尺寸文件夹中的照片文件，大小小于指定的阈值：

![小尺寸文件夹](https://cubettech.com/resources/blog/the-essential-readme-file-elevating-your-project-with-a-comprehensive-document/)

- 这是运行photos_organizer.py文件后，重复文件夹中的照片文件，哈希值与其他照片文件相同：

![重复文件夹]

- 这是运行photos_organizer.py文件后，截屏文件夹中的照片文件，文件名包含截屏的关键字：

![截屏文件夹]

- 这是运行photos_organizer.py文件后，日志文件中的记录，显示了照片文件的操作情况：

![日志文件]

- 这是一个动图，展示了photos_organizer.py文件的运行过程：

![运行过程]

## 贡献方式

欢迎你对本项目进行贡献，你可以通过以下方式参与：

- 提出问题或建议，通过[Issues]功能提交你的问题或建议。
- 提交代码，通过[Fork]和[Pull Request]功能提交你的代码。

## 许可证

本项目使用[MIT License]进行许可，你可以在[LICENSE]文件中查看许可证的内容。

## 联系方式

如果你想联系我，或者关注我的其他项目，你可以通过以下方式找到我：

- 邮箱：example@example.com
- 微信：example
- 微博：example
- GitHub：example
