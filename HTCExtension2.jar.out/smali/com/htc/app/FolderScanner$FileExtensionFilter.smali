.class Lcom/htc/app/FolderScanner$FileExtensionFilter;
.super Ljava/lang/Object;
.source "FolderScanner.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileExtensionFilter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileExtensionFilter"


# instance fields
.field private containFolder:Z

.field mExtensionArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FolderScanner;


# direct methods
.method public constructor <init>(Lcom/htc/app/FolderScanner;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "extensions"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->containFolder:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/FolderScanner;[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "extensions"
    .parameter "isContainFolder"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    .line 69
    iput-boolean p3, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->containFolder:Z

    .line 70
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    #getter for: Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FolderScanner;->access$000(Lcom/htc/app/FolderScanner;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->isOnlyShowCanWriteFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    #getter for: Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FolderScanner;->access$000(Lcom/htc/app/FolderScanner;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-boolean v1, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->containFolder:Z

    goto :goto_0

    .line 101
    :cond_3
    iget-boolean v1, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->containFolder:Z

    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    #getter for: Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FolderScanner;->access$000(Lcom/htc/app/FolderScanner;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/app/FilePickerUtil;->isContainDM(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/htc/app/FolderScanner$FileExtensionFilter;->this$0:Lcom/htc/app/FolderScanner;

    #getter for: Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FolderScanner;->access$000(Lcom/htc/app/FolderScanner;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const/4 v1, 0x1

    goto :goto_0
.end method
