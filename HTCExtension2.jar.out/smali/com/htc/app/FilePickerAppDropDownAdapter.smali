.class Lcom/htc/app/FilePickerAppDropDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerAppDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_1TEXT:I = 0x0

.field private static final ITEM_VIEW_TYPE_2TEXT:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAppDropDownListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mIsCloudAdapter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/FilePickerUtil;Ljava/lang/Boolean;Lcom/htc/app/FilePickerCloudHelper;)V
    .locals 2
    .parameter "context"
    .parameter "filePickerUtil"
    .parameter "isCloudAdapter"
    .parameter "filePickerCloudHelper"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->DEBUG:Z

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    .line 40
    iput-boolean v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    .line 32
    iput-object p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    .line 34
    iput-object p4, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 35
    iput-object p2, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 36
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->initialAppListItems()V

    .line 38
    return-void
.end method

.method private createConvertView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .parameter "parent"
    .parameter "layoutId"

    .prologue
    const/4 v3, -0x1

    .line 312
    iget-object v2, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 313
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, convertView:Landroid/view/View;
    new-instance v2, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v2, v3, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    return-object v0
.end method

.method private findCloudServiceUnSignInItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .locals 6
    .parameter "serviceType"

    .prologue
    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, result:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, appDropDownListItems:[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 213
    array-length v4, v0

    .line 214
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 215
    aget-object v1, v0, v2

    check-cast v1, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 216
    .local v1, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 217
    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isSignIn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 218
    move-object v3, v1

    .line 214
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v1           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_1
    return-object v3
.end method

.method private getCloudServiceAppListItemCount(I)I
    .locals 9
    .parameter "serviceType"

    .prologue
    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, count:I
    iget-object v8, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, appDropDownListItems:[Ljava/lang/Object;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v7, removelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;>;"
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/Object;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v3, v5

    .local v0, appDropDownListItem:Ljava/lang/Object;
    move-object v2, v0

    .line 231
    check-cast v2, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 232
    .local v2, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 230
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v0           #appDropDownListItem:Ljava/lang/Object;
    .end local v2           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    :cond_1
    return v4
.end method

.method private initialAppListItems()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshCloudAppListItems()V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->initialLocalAppListItems()V

    goto :goto_0
.end method

.method private initialCloudAppListItems()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .local v1, appListItemLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    iget-object v10, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, serviceNames:[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v10, v9

    if-lez v10, :cond_1

    .line 105
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v8, v2, v4

    .line 106
    .local v8, serviceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, datatSourceType:I
    iget-object v10, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v10, v3}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v5

    .line 109
    .local v5, isCloudServiceEnabled:Z
    if-eqz v5, :cond_0

    .line 110
    iget-object v10, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v3}, Lcom/htc/app/FilePickerUtil;->isDateSurceTypeItemUiVisabled(I)Z

    move-result v6

    .line 113
    .local v6, isDateSurceTypeItemUiVisabled:Z
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 114
    const/4 v10, 0x0

    invoke-virtual {p0, v3, v10}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v11}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setIsCloudServiceItem(Z)V

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v6           #isDateSurceTypeItemUiVisabled:Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #datatSourceType:I
    .end local v4           #i$:I
    .end local v5           #isCloudServiceEnabled:Z
    .end local v7           #len$:I
    .end local v8           #serviceName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-le v10, v11, :cond_2

    .line 124
    iget-object v10, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_2
    return-void
.end method

.method private initialLocalAppListItems()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x3

    const/16 v7, -0x9

    const/4 v6, 0x0

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v1, appListItemLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;>;"
    const/4 v0, 0x0

    .line 54
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5, v9}, Lcom/htc/app/FilePickerUtil;->isDateSurceTypeItemUiVisabled(I)Z

    move-result v3

    .line 58
    .local v3, isDateSourceTypeVisable_INTERNAL_STORAGE:Z
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5, v7}, Lcom/htc/app/FilePickerUtil;->isDateSurceTypeItemUiVisabled(I)Z

    move-result v2

    .line 60
    .local v2, isDateSourceTypeVisable_ALL:Z
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0, v7, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setIsCloudServiceItem(Z)V

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {p0, v9, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setIsCloudServiceItem(Z)V

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5, v8}, Lcom/htc/app/FilePickerUtil;->isDateSurceTypeItemUiVisabled(I)Z

    move-result v4

    .line 75
    .local v4, isDateSourceType_EXT_SDCARD_STORAGE:Z
    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {p0, v8, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setIsCloudServiceItem(Z)V

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 84
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshLocalAppListItems()V

    .line 88
    :cond_3
    return-void
.end method

.method private refreshCloudAppListItems()V
    .locals 17

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->removeAllCloudServiceAppListItems()V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->initialCloudAppListItems()V

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, serviceNames:[Ljava/lang/String;
    if-eqz v14, :cond_1

    array-length v15, v14

    if-lez v15, :cond_1

    .line 183
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v11           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v11, :cond_1

    aget-object v13, v3, v7

    .line 184
    .local v13, serviceName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v5

    .line 185
    .local v5, datatSourceType:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15, v5}, Lcom/htc/app/FilePickerUtil;->isDateSurceTypeItemUiVisabled(I)Z

    move-result v9

    .line 187
    .local v9, isDateSurceTypeItemUiVisabled:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v15, v5}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v8

    .line 189
    .local v8, isCloudServiceEnabled:Z
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v15, v5}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, accountIds:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 192
    move-object v4, v2

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v12, :cond_0

    aget-object v1, v4, v6

    .line 193
    .local v1, accountId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v15, v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 195
    .local v10, isSignIn:Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1, v15}, Lcom/htc/app/FilePickerAppDropDownAdapter;->setCloudServiceItemToAppDropDown(ILjava/lang/String;Z)V

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 183
    .end local v1           #accountId:Ljava/lang/String;
    .end local v2           #accountIds:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v10           #isSignIn:Ljava/lang/Boolean;
    .end local v12           #len$:I
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0

    .line 202
    .end local v5           #datatSourceType:I
    .end local v7           #i$:I
    .end local v8           #isCloudServiceEnabled:Z
    .end local v9           #isDateSurceTypeItemUiVisabled:Z
    .end local v13           #serviceName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-eqz v15, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 207
    :cond_2
    return-void
.end method

.method private refreshLocalAppListItems()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 147
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v6

    .line 148
    .local v6, isInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v5

    .line 150
    .local v5, isExternalStorageAvailable:Z
    iget-object v10, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    new-array v11, v9, [Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 151
    .local v1, appDropDownListItems:[Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_2

    aget-object v0, v2, v4

    .line 152
    .local v0, appDropDownListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isCloudServiceItem()Z

    move-result v10

    if-nez v10, :cond_0

    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, enabled:Z
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v7

    .line 156
    .local v7, itemDataSourceType:I
    sparse-switch v7, :sswitch_data_0

    .line 170
    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setEnabled(Z)V

    .line 151
    .end local v3           #enabled:Z
    .end local v7           #itemDataSourceType:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .restart local v3       #enabled:Z
    .restart local v7       #itemDataSourceType:I
    :sswitch_0
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 159
    :goto_2
    goto :goto_1

    :cond_1
    move v3, v9

    .line 158
    goto :goto_2

    .line 162
    :sswitch_1
    move v3, v6

    .line 163
    goto :goto_1

    .line 166
    :sswitch_2
    move v3, v5

    goto :goto_1

    .line 173
    .end local v0           #appDropDownListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v3           #enabled:Z
    .end local v7           #itemDataSourceType:I
    :cond_2
    return-void

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private removeAllCloudServiceAppListItems()V
    .locals 7

    .prologue
    .line 130
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 131
    .local v1, appDropDownListItems:[Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 132
    .local v0, appDropDownListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isCloudServiceItem()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0           #appDropDownListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    :cond_1
    return-void
.end method

.method private removeItem(ILjava/util/List;)V
    .locals 1
    .parameter "index"
    .parameter "target"

    .prologue
    .line 409
    if-eqz p2, :cond_0

    .line 410
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 411
    .local v0, len:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 415
    .end local v0           #len:I
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v0       #len:I
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    :cond_0
    iput-object v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    .line 522
    iput-object v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    .line 523
    return-void
.end method

.method getAppDropDownItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .locals 4
    .parameter "appActionId"

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, resultAppListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    iget-object v3, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 289
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 290
    move-object v2, v0

    goto :goto_0

    .line 294
    .end local v0           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .locals 4
    .parameter "serviceType"
    .parameter "isSignIn"

    .prologue
    .line 277
    iget-object v2, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/htc/app/FilePickerUtil;->getAppListItemMainTitleStringId(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, mainTextName:Ljava/lang/String;
    new-instance v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;-><init>(Lcom/htc/app/FilePickerAppDropDownAdapter;)V

    .line 280
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setDataSourceType(I)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setMainTextName(Ljava/lang/String;)V

    .line 282
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 428
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 399
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getLayoutType()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 402
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x2030016

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 323
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    const/4 v2, 0x0

    .line 324
    .local v2, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    if-nez p2, :cond_2

    .line 325
    new-instance v1, Lcom/htc/widget/HtcListItem;

    iget-object v7, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 326
    .local v1, htcListItem:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/htc/widget/HtcListItem2LineText;

    .end local v2           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v7, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 327
    .restart local v2       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 328
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 329
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 330
    new-instance v7, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v7, v8, v8}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    move-object p2, v1

    .line 339
    .end local v1           #htcListItem:Lcom/htc/widget/HtcListItem;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->isEnabled(I)Z

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getLayoutType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 342
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getMainTextName()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, itemMainName:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 344
    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getSubTextName()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, itemSubName:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 350
    if-eqz v2, :cond_1

    .line 351
    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 352
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 367
    .end local v3           #itemMainName:Ljava/lang/String;
    .end local v5           #itemSubName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 368
    return-object p2

    :cond_2
    move-object v6, p2

    .line 336
    check-cast v6, Landroid/view/ViewGroup;

    .line 337
    .local v6, viewgroup:Landroid/view/ViewGroup;
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .restart local v2       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    goto :goto_0

    .line 356
    .end local v6           #viewgroup:Landroid/view/ViewGroup;
    :cond_3
    if-eqz p2, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getMainTextName()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, itemName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 359
    if-eqz v2, :cond_1

    .line 360
    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 361
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x2

    return v0
.end method

.method public isCloudAdapter()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 374
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method refreshAppListItems()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshCloudAppListItems()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshLocalAppListItems()V

    goto :goto_0
.end method

.method removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerAppDropDownAdapter;->removeItem(ILjava/util/List;)V

    .line 419
    return-void
.end method

.method setAppDropDownAllItemsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 304
    iget-object v2, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 306
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setEnabled(Z)V

    goto :goto_0

    .line 309
    .end local v0           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setAppDropDownItemEnabled(IZ)V
    .locals 1
    .parameter "actionId"
    .parameter "enabled"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppDropDownItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 299
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setEnabled(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method setCloudServiceItemToAppDropDown(ILjava/lang/String;Z)V
    .locals 8
    .parameter "serviceType"
    .parameter "accountId"
    .parameter "isSignIn"

    .prologue
    const/4 v7, 0x0

    .line 240
    const/4 v2, 0x1

    .line 241
    .local v2, isNeedToAdd:Z
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v5, p1}, Lcom/htc/app/FilePickerCloudHelper;->isSupportMultiAccouont(I)Z

    move-result v3

    .line 242
    .local v3, isSupportMultiAccouont:Z
    if-nez v3, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->findCloudServiceUnSignInItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 245
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-eqz v0, :cond_0

    .line 246
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p1, p3}, Lcom/htc/app/FilePickerUtil;->getAppListItemMainTitleStringId(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, mainTextName:Ljava/lang/String;
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSignIn(Z)V

    .line 249
    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setMainTextName(Ljava/lang/String;)V

    .line 250
    if-eqz p3, :cond_3

    .line 251
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSubTextName(Ljava/lang/String;)V

    .line 255
    :goto_0
    const/4 v2, 0x0

    .line 259
    .end local v0           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v4           #mainTextName:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_2

    .line 260
    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getCloudServiceAppListItemCount(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 261
    :cond_1
    if-eqz p3, :cond_2

    .line 262
    invoke-virtual {p0, p1, p3}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppListItemInstance(IZ)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v1

    .line 263
    .local v1, appListNewItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    invoke-virtual {v1, p3}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSignIn(Z)V

    .line 264
    if-eqz p3, :cond_4

    .line 265
    invoke-virtual {v1, p2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSubTextName(Ljava/lang/String;)V

    .line 269
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setIsCloudServiceItem(Z)V

    .line 270
    iget-object v5, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mAppDropDownListItem:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v1           #appListNewItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    :cond_2
    return-void

    .line 253
    .restart local v0       #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .restart local v4       #mainTextName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v7}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSubTextName(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0           #appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    .end local v4           #mainTextName:Ljava/lang/String;
    .restart local v1       #appListNewItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSubTextName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setIsCloudAdapter(Z)V
    .locals 0
    .parameter "isCloudAdapter"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter;->mIsCloudAdapter:Z

    .line 48
    return-void
.end method

.method public setMainTextName(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "mainTextName"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppDropDownItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 433
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setMainTextName(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public setSubTextName(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "subTextName"

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->getAppDropDownItem(I)Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    move-result-object v0

    .line 440
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setSubTextName(Ljava/lang/String;)V

    .line 443
    :cond_0
    return-void
.end method
