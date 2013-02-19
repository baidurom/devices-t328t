.class Lcom/htc/app/ShareListActivity$SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/ShareListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedAdapter"
.end annotation


# instance fields
.field private mApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHtcContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSharedContent:Ljava/lang/String;

.field private mShortenedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "sharedContent"
    .parameter "shortenedUrl"
    .parameter "originalUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    .line 150
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-object p2, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    .line 154
    iput-object p3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mSharedContent:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mShortenedUrl:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mOriginalUrl:Ljava/lang/String;

    .line 159
    :try_start_0
    const-string v1, "com.htc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mHtcContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mHtcContext:Landroid/content/Context;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/htc/app/ShareListActivity$SharedAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .locals 7
    .parameter "view"
    .parameter "info"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/ShareListActivity$ViewHolder;

    .line 256
    .local v5, vh:Lcom/htc/app/ShareListActivity$ViewHolder;
    iget-object v4, v5, Lcom/htc/app/ShareListActivity$ViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 257
    .local v4, text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    iget-object v0, v5, Lcom/htc/app/ShareListActivity$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 261
    .local v0, icon:Lcom/htc/widget/HtcListItemColorIcon;
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 266
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 267
    .local v2, labelText:Ljava/lang/CharSequence;
    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 269
    .local v1, labelIcon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    .line 270
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 272
    :cond_2
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private sortList()V
    .locals 10

    .prologue
    .line 169
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 171
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x1

    if-le v3, v9, :cond_4

    .line 172
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v6, v9, :cond_3

    .line 173
    move v4, v6

    .line 174
    .local v4, id_current:I
    add-int/lit8 v5, v6, 0x1

    .line 177
    .local v5, id_next:I
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v0, ap_current:Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 180
    .local v1, ap_next:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, current_name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 182
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 184
    :cond_0
    invoke-virtual {v1, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, next_name:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 186
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 188
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    .line 191
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v9, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v9, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    .end local v0           #ap_current:Landroid/content/pm/ResolveInfo;
    .end local v1           #ap_next:Landroid/content/pm/ResolveInfo;
    .end local v2           #current_name:Ljava/lang/String;
    .end local v4           #id_current:I
    .end local v5           #id_next:I
    .end local v7           #next_name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 196
    .end local v6           #j:I
    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 5
    .parameter "position"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    .line 286
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 288
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 289
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    :cond_1
    const-string v2, "share"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mShortenedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 300
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.facebook.katana.ShareLinkActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 305
    :cond_3
    const-string v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mShortenedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, -0x2

    .line 231
    if-nez p2, :cond_0

    .line 232
    new-instance v1, Lcom/htc/app/ShareListActivity$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/app/ShareListActivity$ViewHolder;-><init>(Lcom/htc/app/ShareListActivity$1;)V

    .line 234
    .local v1, vh:Lcom/htc/app/ShareListActivity$ViewHolder;
    new-instance v0, Lcom/htc/widget/HtcListItem;

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, item:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 237
    new-instance v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 239
    iget-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v3, 0x2030038

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 244
    iget-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 245
    iget-object v2, v1, Lcom/htc/app/ShareListActivity$ViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 247
    move-object p2, v0

    .line 250
    .end local v0           #item:Lcom/htc/widget/HtcListItem;
    .end local v1           #vh:Lcom/htc/app/ShareListActivity$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p2, v2}, Lcom/htc/app/ShareListActivity$SharedAdapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    .line 251
    return-object p2
.end method
