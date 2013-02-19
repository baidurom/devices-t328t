.class public Lcom/htc/dialog/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDefaultIcon:Z

.field public mForceInverseBackground:Z

.field public mHtcContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mTitleDivider:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 1080
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1088
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1099
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1116
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1118
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1120
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mDefaultIcon:Z

    .line 1126
    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 1142
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1146
    :try_start_0
    const-string v1, "com.htc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 1153
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1154
    return-void

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createListView(Lcom/htc/dialog/HtcAlertController;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1233
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090080

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1235
    .local v6, listView:Landroid/widget/ListView;
    if-eqz v6, :cond_0

    .line 1236
    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1237
    const/4 v1, 0x4

    invoke-virtual {v6, v1, v9}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 1240
    :cond_0
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 1241
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 1242
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const v3, 0x2090085

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1295
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1302
    :cond_1
    #setter for: Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/dialog/HtcAlertController;->access$802(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1303
    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/htc/dialog/HtcAlertController;->access$902(Lcom/htc/dialog/HtcAlertController;I)I

    .line 1305
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    .line 1306
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1327
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    .line 1328
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1331
    :cond_3
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_b

    .line 1332
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1336
    :cond_4
    :goto_2
    #setter for: Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/htc/dialog/HtcAlertController;->access$1002(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1337
    return-void

    .line 1257
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1284
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_6
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    const v2, 0x2090086

    .line 1286
    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9

    .line 1287
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1284
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_7
    const v2, 0x2090084

    goto :goto_3

    .line 1287
    .restart local v2       #layout:I
    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 1290
    :cond_9
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1314
    .end local v2           #layout:I
    :cond_a
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    .line 1315
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1333
    :cond_b
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    .line 1334
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/htc/dialog/HtcAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1158
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1159
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1173
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_f

    .line 1174
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1179
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1187
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1188
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1192
    :cond_4
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_5

    .line 1193
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1195
    :cond_5
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1196
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1198
    :cond_6
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1199
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1202
    :cond_7
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_8

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1207
    :cond_8
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1208
    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V

    .line 1210
    :cond_a
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1211
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    .line 1212
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1219
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleDividerVisible(Z)V

    .line 1220
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1229
    return-void

    .line 1161
    :cond_c
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1162
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_d
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1165
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    :cond_e
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 1168
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1176
    :cond_f
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1215
    :cond_10
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
