.class public Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 66
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 76
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 86
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "sumDirectoryContents"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 111
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const-wide/16 v8, 0x0

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .local v0, file1:Ljava/io/File;
    move-object v1, p2

    .line 126
    check-cast v1, Ljava/io/File;

    .line 127
    .local v1, file2:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 128
    .local v4, size1:J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    iget-boolean v10, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v4

    .line 133
    :goto_0
    const-wide/16 v6, 0x0

    .line 134
    .local v6, size2:J
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 135
    iget-boolean v10, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v6

    .line 139
    :goto_1
    sub-long v2, v4, v6

    .line 140
    .local v2, result:J
    cmp-long v10, v2, v8

    if-gez v10, :cond_4

    .line 141
    const/4 v8, -0x1

    .line 145
    :goto_2
    return v8

    .end local v2           #result:J
    .end local v6           #size2:J
    :cond_0
    move-wide v4, v8

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0

    .restart local v6       #size2:J
    :cond_2
    move-wide v6, v8

    .line 135
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_1

    .line 142
    .restart local v2       #result:J
    :cond_4
    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 143
    const/4 v8, 0x1

    goto :goto_2

    .line 145
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method
