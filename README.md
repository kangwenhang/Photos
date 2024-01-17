# 照片整理器

这是一个Python项目，用于根据日期和其他条件整理照片文件。（慢慢整-）

## 功能

- 根据照片的拍摄日期，将照片文件按年月分类并移动到相应的文件夹中。
- 根据照片的分辨率，将低分辨率的照片文件移动到一个单独的文件夹中。
- 根据照片的大小，将小于指定阈值的照片文件移动到一个单独的文件夹中。
- 根据照片的哈希值，将重复的照片文件移动到一个单独的文件夹中。
- 根据照片的文件名，将截屏文件移动到一个单独的文件夹中。
- 使用SQLite数据库存储照片的文件名和哈希值，以便检查重复性。
- 使用日志文件记录照片文件的操作情况。

## 安装

```bash
docker run -dit \
-v /home/peizhi/photos/config:/photos/config \
-v /home/peizhi/photos/logs:/photos/logs \
-v /shuju/photos:/photos/data \
--name photos \
--hostname photos \
--restart always \
k1483162508/photos:tag
```

## 使用方法

- 将你的照片文件放在/photos/data目录下的一个或多个源文件夹中。
- 在/photos/config目录下的settings.ini文件中，设置你想要的参数，如支持的格式、文件夹名、阈值等。
- 在/photos/data目录下的一个或多个目标文件夹中，查看整理后的照片文件。
- 在/photos/logs目录下，查看日志文件，了解照片文件的操作情况。

## 运行效果

具体的整理过程如下：

- 首先，从/photos/config目录下的settings.ini文件中，读取支持的照片格式、文件夹名、阈值等参数。
- 然后，遍历源文件夹中的所有文件，判断是否是照片文件，如果是，就获取照片的拍摄日期、分辨率、大小、哈希值等信息。
- 接着，根据照片的拍摄日期，将照片文件按年月分类并移动到相应的文件夹中，例如，2020年12月的照片文件会被移动到2020/12文件夹中。
- 然后，根据照片的分辨率，将低分辨率的照片文件移动到一个单独的文件夹中，例如，分辨率低于800x600的照片文件会被移动到low_res文件夹中。
- 然后，根据照片的大小，将小于指定阈值的照片文件移动到一个单独的文件夹中，例如，大小小于100KB的照片文件会被移动到small_size文件夹中。
- 然后，根据照片的哈希值，将重复的照片文件移动到一个单独的文件夹中，例如，哈希值与其他照片文件相同的照片文件会被移动到duplicated文件夹中。
- 然后，根据照片的文件名，将截屏文件移动到一个单独的文件夹中，例如，文件名包含screenshot的照片文件会被移动到screenshot文件夹中。
- 最后，使用SQLite数据库存储照片的文件名和哈希值，以便检查重复性。使用日志文件记录照片文件的操作情况。

假设你的源文件夹是这样的：
```
<待整理图片的源目录>
temp_photos/
├── IMG224924.jpg
├── IMG134015.jpg
├── IMG134031.jpg
├── IMG211327.jpg
├── Subfolders
│   ├── Photo110.jpg
│   ├── screenshot_Photo119.jpg
│   └── Photo120.jpg
└── IMG211429.jpg
```

那么，运行photos_organizer.py文件后，你的目标文件夹会变成这样的：
```
<整理后图片的目标目录>
photos/
├── 2019
│   └── 11
│       └── IMG211327.jpg
├── 2020
│   ├── 01
│   │   └── IMG211429.jpg
│   ├── 03
│   │   └── IMG134015.jpg
│   └── 04
│       └── IMG134031.jpg
├── 2021
│   └── 02
│       └── IMG224924.jpg
├── duplicated
│   └── Photo120.jpg
├── low_res
│   └── Photo110.jpg
├── screenshot
│   └──screenshot_Photo119.jpg
└── small_size
    └── IMG134031.jpg
```