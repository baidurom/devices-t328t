.class public Lcom/htc/app/ShareListActivity;
.super Landroid/app/Activity;
.source "ShareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ShareListActivity$SharedAdapter;,
        Lcom/htc/app/ShareListActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "task_specific_history_file_name.xml"


# instance fields
.field mApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroid/widget/ActivityChooserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/ShareListActivity;)Landroid/widget/ActivityChooserModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;

    return-object v0
.end method


# virtual methods
.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 128
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/ShareListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 51
    .local v14, from:Landroid/content/Intent;
    const-string v3, "SHARED_CONTENT"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, sharedContent:Ljava/lang/String;
    const-string v3, "SHORTENED_URL"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, shortenedUrl:Ljava/lang/String;
    const-string v3, "ORIGINAL_URL"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, originalUrl:Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v5, ""

    .line 55
    :cond_0
    if-nez v6, :cond_1

    const-string v6, ""

    .line 56
    :cond_1
    if-nez v7, :cond_2

    const-string v7, ""

    .line 58
    :cond_2
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v17, send:Landroid/content/Intent;
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const-string v3, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v3, "android.intent.extra.TITLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "task_specific_history_file_name.xml"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;

    .line 65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v12

    .line 68
    .local v12, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v12, :cond_3

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v3, v15}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 76
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 77
    :cond_4
    const/4 v15, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_5

    .line 78
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v18, "com.facebook.katana.ShareLinkActivity"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 79
    invoke-interface {v4, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_5
    new-instance v2, Lcom/htc/app/ShareListActivity$SharedAdapter;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/app/ShareListActivity$SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v2, adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;
    new-instance v11, Lcom/htc/app/ShareListActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/htc/app/ShareListActivity$1;-><init>(Lcom/htc/app/ShareListActivity;Lcom/htc/app/ShareListActivity$SharedAdapter;)V

    .line 98
    .local v11, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/htc/app/ShareListActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/app/ShareListActivity$2;-><init>(Lcom/htc/app/ShareListActivity;)V

    .line 104
    .local v10, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v8, Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcShareViaMultiAdapter;-><init>(Landroid/content/Context;)V

    .line 105
    .local v8, bigAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcShareViaMultiAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v9, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-direct {v9, v8, v11}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    .local v9, bigListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x20401ab

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/app/ShareListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v8, v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v13

    .line 114
    .local v13, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 115
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 116
    .local v16, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f00

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 117
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    return-void

    .line 77
    .end local v2           #adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;
    .end local v8           #bigAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    .end local v9           #bigListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    .end local v10           #cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v11           #choose_listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v13           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v16           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1
.end method
