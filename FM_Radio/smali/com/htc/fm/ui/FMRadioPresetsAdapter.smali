.class public Lcom/htc/fm/ui/FMRadioPresetsAdapter;
.super Landroid/widget/CursorAdapter;
.source "FMRadioPresetsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioPresetsAdapter"

.field public static final TYPE_COMMON:I = 0x0

.field private static final TYPE_COUNT:I = 0x3

.field public static final TYPE_DELETE:I = 0x1

.field public static final TYPE_EDIT:I = 0x2


# instance fields
.field private checkedList:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentFrequency:I

.field private mIgnoreContentChanged:Z

.field private mIgnoreDataSetChanged:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 38
    iput v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    .line 44
    iput v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mCurrentFrequency:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreDataSetChanged:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreContentChanged:Z

    .line 51
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioPresetsAdapter(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    invoke-direct {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->resetCheckedList()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/ui/FMRadioPresetsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetCheckedList()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 87
    .local v0, tCount:I
    const-string v1, "FMRadioPresetsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCheckedList() count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    .line 89
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 286
    return-void
.end method

.method public deleteSelectedItems()V
    .locals 4

    .prologue
    .line 191
    const-string v2, "FMRadioPresetsAdapter"

    const-string v3, "deleteSelectedItems()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "_id"

    invoke-static {v0, v3}, Lcom/htc/fm/utils/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/fm/ui/helper/PresetsHelper;->deletePreset(Landroid/content/Context;I)V

    .line 194
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreDataSetChanged:Z

    .line 201
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/fm/ui/helper/PresetsHelper;->getCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 202
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 227
    .local v0, tCount:I
    const-string v1, "FMRadioPresetsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount() count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->resetCheckedList()V

    .line 231
    :cond_0
    return v0
.end method

.method public getCurrentType()I
    .locals 2

    .prologue
    .line 106
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "getCurrentType()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "getItemViewType()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCurrentType()I

    move-result v0

    return v0
.end method

.method public getPresetByPos(I)Lcom/htc/fm/ui/helper/Preset;
    .locals 4
    .parameter "position"

    .prologue
    .line 154
    const-string v1, "FMRadioPresetsAdapter"

    const-string v2, "getPresetByPos()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 156
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lcom/htc/fm/ui/helper/Preset;

    const-string v2, "_id"

    invoke-static {v0, v2}, Lcom/htc/fm/utils/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/htc/fm/utils/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/fm/ui/helper/Preset;-><init>(ILjava/lang/String;)V

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedItemCount()I
    .locals 7

    .prologue
    .line 163
    const-string v5, "FMRadioPresetsAdapter"

    const-string v6, "getSelectedItemCount()"

    invoke-static {v5, v6}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, cnt:I
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    .local v1, arr$:[Z
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-boolean v0, v1, v3

    .line 166
    .local v0, aCheckedList:Z
    if-eqz v0, :cond_0

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 165
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v0           #aCheckedList:Z
    :cond_1
    return v2
.end method

.method public getSelectedItemList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const-string v2, "FMRadioPresetsAdapter"

    const-string v3, "getSelectedItemList()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, tList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 183
    iget-object v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 187
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 236
    const-string v9, "FMRadioPresetsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getView() position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, listItem:Lcom/htc/widget/HtcListItem;
    if-nez p2, :cond_1

    .line 241
    iget-object v9, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030003

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5           #listItem:Lcom/htc/widget/HtcListItem;
    check-cast v5, Lcom/htc/widget/HtcListItem;

    .line 246
    .restart local v5       #listItem:Lcom/htc/widget/HtcListItem;
    :goto_0
    const v9, 0x7f050025

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, channelFreq:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "_id"

    invoke-static {v9, v10}, Lcom/htc/fm/utils/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, freq:I
    invoke-static {v4}, Lcom/htc/fm/utils/FreqUtils;->getFreq(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const v9, 0x7f050027

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 251
    .local v1, channelName:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v9, v10}, Lcom/htc/fm/utils/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 253
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 255
    const/4 v9, 0x1

    iget v10, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    if-ne v9, v10, :cond_2

    const/4 v8, 0x1

    .line 257
    .local v8, tIsDeleteMode:Z
    :goto_1
    const v9, 0x7f050029

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 258
    .local v7, nowPlaying:Landroid/widget/ImageView;
    iget v9, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mCurrentFrequency:I

    if-ne v4, v9, :cond_3

    if-nez v8, :cond_3

    .line 259
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :goto_2
    const v9, 0x7f05002a

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcDeleteButton;

    .line 266
    .local v2, deleteButton:Lcom/htc/widget/HtcDeleteButton;
    if-eqz v8, :cond_0

    .line 267
    move v3, p1

    .line 268
    .local v3, deleteButtonPosition:I
    new-instance v9, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;

    invoke-direct {v9, p0, v3}, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;-><init>(Lcom/htc/fm/ui/FMRadioPresetsAdapter;I)V

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcDeleteButton;->setVisibility(I)V

    .line 276
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcDeleteButton;->setFocusable(Z)V

    .line 277
    iget-object v9, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    aget-boolean v9, v9, p1

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 280
    .end local v3           #deleteButtonPosition:I
    :cond_0
    return-object v5

    .end local v0           #channelFreq:Landroid/widget/TextView;
    .end local v1           #channelName:Lcom/htc/widget/HtcListItem2LineText;
    .end local v2           #deleteButton:Lcom/htc/widget/HtcDeleteButton;
    .end local v4           #freq:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #nowPlaying:Landroid/widget/ImageView;
    .end local v8           #tIsDeleteMode:Z
    :cond_1
    move-object v5, p2

    .line 243
    check-cast v5, Lcom/htc/widget/HtcListItem;

    goto :goto_0

    .line 255
    .restart local v0       #channelFreq:Landroid/widget/TextView;
    .restart local v1       #channelName:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v4       #freq:I
    .restart local v6       #name:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 262
    .restart local v7       #nowPlaying:Landroid/widget/ImageView;
    .restart local v8       #tIsDeleteMode:Z
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 95
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "getViewTypeCount()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x3

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataSetChanged() mIgnoreDataSetChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreDataSetChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreDataSetChanged:Z

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "  notifyDataSetChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged() mIgnoreContentChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreContentChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreContentChanged:Z

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 74
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "  onContentChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->resetCheckedList()V

    .line 76
    iget-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->onAdapterContentChanged()V

    .line 78
    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 205
    const-string v1, "FMRadioPresetsAdapter"

    const-string v2, "selectAll()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->notifyDataSetChanged()V

    .line 209
    return-void
.end method

.method public selectItem(I)V
    .locals 7
    .parameter "position"

    .prologue
    const v6, 0x7fffffff

    .line 120
    const-string v3, "FMRadioPresetsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectItem() position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget v3, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v4, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    iget-object v3, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v4, p1

    .line 125
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 124
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 129
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "_id"

    invoke-static {v0, v3}, Lcom/htc/fm/utils/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, v:I
    if-eq v2, v6, :cond_0

    .line 133
    const-string v3, "FMRadioPresetsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select Freq "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/ui/helper/PresetsHelper;->startAddPreset(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 138
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #v:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .restart local v0       #c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v3, "_id"

    invoke-static {v0, v3}, Lcom/htc/fm/utils/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 141
    .restart local v2       #v:I
    if-eq v2, v6, :cond_0

    .line 143
    const-string v3, "FMRadioPresetsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select Pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Freq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.fm.uihelper"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "command"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v3, "freq"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentFrequency(I)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 219
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFrequency() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput p1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mCurrentFrequency:I

    .line 221
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method

.method public setCurrentType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 111
    const-string v0, "FMRadioPresetsAdapter"

    const-string v1, "setCurrentType()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    if-ne v0, p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->unselectAll()V

    .line 115
    iput p1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mType:I

    .line 116
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setIgnoreContentChanged(Z)V
    .locals 3
    .parameter "isIgnoreContentChanged"

    .prologue
    .line 81
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgnoreContentChanged() isIgnoreContentChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-boolean p1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mIgnoreContentChanged:Z

    .line 83
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 173
    const-string v0, "FMRadioPresetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedItem() position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 177
    :cond_0
    return-void
.end method

.method public unselectAll()V
    .locals 3

    .prologue
    .line 212
    const-string v1, "FMRadioPresetsAdapter"

    const-string v2, "unselectAll()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->checkedList:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->notifyDataSetChanged()V

    .line 216
    return-void
.end method
