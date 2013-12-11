.class public Lcom/htc/customization/FrameworkCustomization;
.super Ljava/lang/Object;
.source "FrameworkCustomization.java"

# interfaces
.implements Lcom/htc/customization/HtcCustomization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;
    }
.end annotation


# static fields
.field private static booleanCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final instance:Lcom/htc/customization/FrameworkCustomization;

.field private static integerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static parsedFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mTestMode:Z

.field private xmlFileNameWithFullPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/htc/customization/FrameworkCustomization;

    invoke-direct {v0}, Lcom/htc/customization/FrameworkCustomization;-><init>()V

    sput-object v0, Lcom/htc/customization/FrameworkCustomization;->instance:Lcom/htc/customization/FrameworkCustomization;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/customization/FrameworkCustomization;->parsedFile:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/customization/FrameworkCustomization;->mTestMode:Z

    .line 59
    return-void
.end method

.method private LazilyParseXmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFileNameBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/customization/FrameworkCustomization;->isFileParsedBefore(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->setXmlFileNameWithFullPath(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/customization/FrameworkCustomization;->getXmlFileNameWithFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/htc/customization/FrameworkCustomization;->confirmFileExist(Ljava/io/File;)V

    .line 296
    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization;->parsing()V

    .line 298
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFileNameBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/customization/FrameworkCustomization;->recordParsedFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private booleanCacheContainsTruncatedKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 259
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private confirmFileExist(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    :try_start_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 353
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    return-void
.end method

.method private getDefaultPathForHtcExtensionJar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/htc/customization/FrameworkCustomization;->mTestMode:Z

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "/data/HTCExtension.jar"

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFileNameBy(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/16 v3, 0x2e

    .line 356
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 357
    .local v1, start:I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 358
    .local v0, end:I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFromBooleanCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 255
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getFromIntegerCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getFromStringCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 195
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getHandler()Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;-><init>(Lcom/htc/customization/FrameworkCustomization;)V

    return-object v0
.end method

.method public static getInstance()Lcom/htc/customization/HtcCustomization;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->instance:Lcom/htc/customization/FrameworkCustomization;

    return-object v0
.end method

.method private getRootPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 312
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "etc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private integerCacheContainsFormattedKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 156
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFileParsedBefore(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 331
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->parsedFile:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parsing()V
    .locals 6

    .prologue
    .line 317
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 318
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 319
    .local v2, reader:Lorg/xml/sax/XMLReader;
    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization;->getHandler()Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 320
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/htc/customization/FrameworkCustomization;->getXmlFileNameWithFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #reader:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void

    .line 108
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    goto :goto_0
.end method

.method static put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 92
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    .line 95
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    .line 82
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private recordParsedFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 327
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->parsedFile:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method private setXmlFileNameWithFullPath(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 302
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, firstDotFollowFolder:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, folder:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization;->getRootPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFileNameBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/FrameworkCustomization;->xmlFileNameWithFullPath:Ljava/lang/String;

    .line 309
    return-void
.end method

.method private stringCacheContainsTruncatedKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 152
    sget-object v0, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private transformValueInStringCacheToBooleanCacheBasedOn(Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, s:Ljava/lang/String;
    new-instance v4, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;

    new-instance v5, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

    invoke-direct {v5, p0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;-><init>(Lcom/htc/customization/FrameworkCustomization;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    invoke-virtual {v4, v2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->translateToTrueFalse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, value:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/customization/FrameworkCustomization;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 269
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private transformValueInStringCacheToIntegerCacheBasedOn(Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, s:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/customization/FrameworkCustomization;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 149
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private truncateFolderAndFileElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    .line 335
    const-string v0, "."

    .line 338
    .local v0, dot:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 339
    .local v1, firstDotFollowingFolderName:I
    const-string v4, "."

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 340
    .local v3, secondDotFollowingFileName:I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public getBoolList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->booleanCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 233
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 250
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v1

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->booleanCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->LazilyParseXmlFile(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->booleanCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFromBooleanCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 244
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->stringCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 245
    new-instance v1, Lcom/htc/customization/CustomizationValueNotFoundException;

    invoke-direct {v1}, Lcom/htc/customization/CustomizationValueNotFoundException;-><init>()V

    throw v1

    .line 248
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->transformValueInStringCacheToBooleanCacheBasedOn(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFromBooleanCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getBoolValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getBoolList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBoolValue(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getBoolValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/htc/customization/CustomizationValueNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 281
    .end local p2
    :goto_0
    return p2

    .line 280
    .restart local p2
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Lcom/htc/customization/CustomizationValueNotFoundException;
    goto :goto_0
.end method

.method public getIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->integerCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 136
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->integerCacheContainsFormattedKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->LazilyParseXmlFile(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->integerCacheContainsFormattedKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFromIntegerCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->stringCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 131
    new-instance v1, Lcom/htc/customization/CustomizationValueNotFoundException;

    invoke-direct {v1}, Lcom/htc/customization/CustomizationValueNotFoundException;-><init>()V

    throw v1

    .line 134
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->transformValueInStringCacheToIntegerCacheBasedOn(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFromIntegerCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/htc/customization/CustomizationValueNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 171
    .end local p2
    :goto_0
    return p2

    .line 168
    .restart local p2
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lcom/htc/customization/CustomizationValueNotFoundException;
    goto :goto_0

    .line 170
    .end local v0           #e:Lcom/htc/customization/CustomizationValueNotFoundException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lcom/htc/customization/FrameworkCustomization;->stringCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 187
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->stringCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->LazilyParseXmlFile(Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->stringCacheContainsTruncatedKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getFromStringCacheByTruncatedKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 190
    :cond_2
    new-instance v1, Lcom/htc/customization/CustomizationValueNotFoundException;

    invoke-direct {v1}, Lcom/htc/customization/CustomizationValueNotFoundException;-><init>()V

    throw v1
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p1}, Lcom/htc/extension/HtcExtensionCustomization;->isPreferredFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    new-instance v2, Lcom/htc/extension/JarManifestParser;

    invoke-direct {p0}, Lcom/htc/customization/FrameworkCustomization;->getDefaultPathForHtcExtensionJar()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/extension/JarManifestParser;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, parser:Lcom/htc/extension/JarManifestParser;
    new-instance v3, Lcom/htc/extension/HtcExtensionCustomization;

    invoke-direct {v3, v2}, Lcom/htc/extension/HtcExtensionCustomization;-><init>(Lcom/htc/extension/JarManifestParser;)V

    invoke-virtual {v3, p1}, Lcom/htc/extension/HtcExtensionCustomization;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .end local v2           #parser:Lcom/htc/extension/JarManifestParser;
    :goto_0
    return-object v3

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Lcom/htc/version/HtcBuild;

    invoke-direct {v0}, Lcom/htc/version/HtcBuild;-><init>()V

    .line 207
    .local v0, build:Lcom/htc/version/HtcBuild;
    invoke-virtual {v0, p1}, Lcom/htc/version/HtcBuild;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/customization/CustomizationValueNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 208
    .end local v0           #build:Lcom/htc/version/HtcBuild;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Lcom/htc/customization/CustomizationValueNotFoundException;
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/customization/CustomizationValueNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 225
    .end local p2
    :goto_0
    return-object p2

    .line 224
    .restart local p2
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lcom/htc/customization/CustomizationValueNotFoundException;
    goto :goto_0
.end method

.method getXmlFileNameWithFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization;->xmlFileNameWithFullPath:Ljava/lang/String;

    return-object v0
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter "testMode"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/customization/FrameworkCustomization;->mTestMode:Z

    .line 64
    return-void
.end method
