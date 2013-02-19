.class Lcom/htc/app/FilePickerFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_FILE_CHECKED:I = 0x0

.field private static final ITEM_TYPE_FILE_UNCHECKED:I = 0x1

.field private static final ITEM_TYPE_FOLDER_CHECKED:I = 0x2

.field private static final ITEM_TYPE_FOLDER_UNCHECKED:I = 0x3

.field private static mFilePickerLayout_FolderView_FileItemView:I

.field private static mFilePickerLayout_FolderView_FolderItemView:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCheckedFolderFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFileDate:Ljava/sql/Date;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCanSort:Z

.field private mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mResultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x209002d

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    .line 36
    const v0, 0x209002c

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->DEBUG:Z

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsCanSort:Z

    .line 46
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    .line 87
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 69
    invoke-direct {p0, p1, v3}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;I)V

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/htc/app/FilePickerUtil;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "context"
    .parameter "selectionType"
    .parameter "filePickerUtil"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/htc/app/FilePickerUtil;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->DEBUG:Z

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsCanSort:Z

    .line 46
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    .line 87
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;I)V

    .line 75
    iput-object p3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 76
    iput-object p4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/app/FilePickerFolderAdapter;->innerResetAllChecked()V

    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "selectionType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 62
    iput p2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsCanSort:Z

    .line 64
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    .line 65
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 66
    return-void
.end method

.method private innerResetAllChecked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getRadioButton()Lcom/htc/widget/HtcRadioButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getRadioButton()Lcom/htc/widget/HtcRadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 210
    .end local v0           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 81
    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 82
    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method existCheckedList(Lcom/htc/app/FolderItemInfo;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, found:Z
    if-eqz p1, :cond_1

    .line 161
    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 163
    .local v0, check:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #check:Lcom/htc/app/FolderItemInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 324
    const-string v0, "sean"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 141
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x2

    .line 153
    :goto_0
    return v1

    .line 146
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getSelectItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/app/FolderItemInfo;

    .line 338
    .local v8, item:Lcom/htc/app/FolderItemInfo;
    if-nez v8, :cond_0

    .line 339
    const/4 v10, 0x0

    .line 454
    :goto_0
    return-object v10

    .line 341
    :cond_0
    if-nez p2, :cond_1

    .line 342
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 343
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 349
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 350
    .local v9, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 351
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 352
    new-instance v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :goto_2
    const v10, 0x20200b6

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 367
    .local v5, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const v10, 0x20200b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    .line 369
    .local v2, fileItemIcon:Lcom/htc/widget/HtcListItemTileImage;
    const v10, 0x20200b3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcCheckBox;

    .line 370
    .local v4, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    const v10, 0x20200b3

    move-object/from16 v0, p2

    invoke-virtual {v4, v10, v0}, Lcom/htc/widget/HtcCheckBox;->setTag(ILjava/lang/Object;)V

    .line 372
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 373
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 374
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 375
    const v10, 0x2030037

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 376
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 377
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 378
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    :cond_2
    :goto_3
    move-object/from16 v10, p2

    .line 454
    goto/16 :goto_0

    .line 346
    .end local v2           #fileItemIcon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v5           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 355
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 358
    :cond_5
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 359
    new-instance v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 362
    :cond_6
    new-instance v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 380
    .restart local v2       #fileItemIcon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v4       #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .restart local v5       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 381
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, fname:Ljava/lang/String;
    const-string v10, ".dcf"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(DRM) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    :cond_8
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 387
    sget v10, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 390
    :goto_4
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/sql/Date;->setTime(J)V

    .line 391
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 392
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 394
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v7

    .line 395
    .local v7, isChecked:Z
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-nez v10, :cond_c

    .line 396
    iget v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-nez v10, :cond_b

    .line 397
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 404
    :cond_9
    :goto_5
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 389
    .end local v7           #isChecked:Z
    :cond_a
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v3}, Lcom/htc/app/FilePickerUtil;->getFileTypeImage(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_4

    .line 398
    .restart local v7       #isChecked:Z
    :cond_b
    iget v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 399
    invoke-virtual {v8, v4}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 400
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 401
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 402
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_5

    .line 406
    :cond_c
    const v10, 0x20200b4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcRadioButton;

    .line 408
    .local v6, htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    iget v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-nez v10, :cond_d

    .line 409
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 410
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 411
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 412
    invoke-virtual {v8, v6}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    .line 413
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 414
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 415
    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 416
    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcRadioButton;->setTag(Ljava/lang/Object;)V

    .line 417
    new-instance v10, Lcom/htc/app/FilePickerFolderAdapter$2;

    invoke-direct {v10, p0}, Lcom/htc/app/FilePickerFolderAdapter$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 437
    :cond_d
    iget v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 438
    invoke-virtual {v8}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v1, 0x1

    .line 440
    .local v1, enableSelectionUI:Z
    :goto_6
    if-eqz v1, :cond_f

    .line 441
    invoke-virtual {v8, v4}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 442
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 443
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 444
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 446
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 438
    .end local v1           #enableSelectionUI:Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 448
    .restart local v1       #enableSelectionUI:Z
    :cond_f
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 449
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x4

    return v0
.end method

.method final isCanSort()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsCanSort:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 215
    .local v0, item:Lcom/htc/app/FolderItemInfo;
    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const/4 v1, 0x1

    goto :goto_0
.end method

.method performActionModeFinish()V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 307
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 311
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_0
    return-void
.end method

.method removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method resetAllChecked()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 199
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method final setCanSort(Z)V
    .locals 0
    .parameter "isCanSort"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsCanSort:Z

    .line 50
    return-void
.end method
