.class public abstract Lcom/htc/app/FilePickerActivity;
.super Landroid/app/Activity;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final DRM_AUDIO:Ljava/lang/String; = "drm_audio"

.field public static final DRM_IMAGE:Ljava/lang/String; = "drm_image"

.field public static final DRM_VIDEO:Ljava/lang/String; = "drm_video"

.field public static EMPTY_FOLDER:Ljava/lang/String; = null

.field public static final FOLDER_VIEW_TYPE:I = 0x2

.field public static final GRID_VIEW_TYPE:I = 0x1

.field public static final KEY_APP_NAME:Ljava/lang/String; = "application_name"

.field public static final KEY_CLOUD_FUNCTION_ENABLED:Ljava/lang/String; = "CloudFunctionEnabled"

.field public static final KEY_DRM_FILTER:Ljava/lang/String; = "drm_filter"

.field public static final KEY_DROPBOX_SHARE_LINK_ENABLE:Ljava/lang/String; = "returnDropBoxShareLinkEnable"

.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_FOLDER_FILE_SWITCH_MENU_ITEM:Ljava/lang/String; = "enabledFolderFileSwitchMenuItem"

.field public static final KEY_FOLDER_ITEM_SELECT_ENABLED:Ljava/lang/String; = "folderItemSelectEnabled"

.field public static final KEY_GROUP_BY_PATH:Ljava/lang/String; = "showPath"

.field public static final KEY_MODE_TYPE_OF_FOLDER_VIEW:Ljava/lang/String; = "ModeTypeOfFolderView"

.field public static final KEY_NO_FILE_FOUND_TEXT:Ljava/lang/String; = "no_file_found_text"

.field public static final KEY_ONLY_SCAN_FOLDER_AT_FOLDER_MODE:Ljava/lang/String; = "onlyScanFolderAtFolderMode"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_RECENT_FILES:Ljava/lang/String; = "recent_files"

.field public static final KEY_REMOVE_FILE_MODE:Ljava/lang/String; = "remove_file_mode"

.field public static final KEY_ROOT_PATH:Ljava/lang/String; = "root_path"

.field public static final KEY_SEARCH_HINT_TEXT:Ljava/lang/String; = "hint_search_text"

.field public static final KEY_SEARCH_SWITCH_MENU_ITEM:Ljava/lang/String; = "SearchMenuItemVisabled"

.field public static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field public static final KEY_SHOW_ONLY_ONE_VIEW_TYPE_FORCE_ENABLED:Ljava/lang/String; = "showOnlyOneViewTypeForceEnabled"

.field public static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field public static final KEY_SORT_SWITCH_MENU_ITEM:Ljava/lang/String; = "SortMenuItemVisabled"

.field public static final KEY_SORT_TYPE:Ljava/lang/String; = "sort_type"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TITLE_ID:Ljava/lang/String; = "title_string_id"

.field public static final KEY_VIEW_TYPE:Ljava/lang/String; = "viewType"

.field public static final KEY_VIEW_TYPE_USER_PREFER:Ljava/lang/String; = "pref_key_filepicker_view_type"

.field public static final LIST_VIEW_TYPE:I = 0x0

.field public static LOADING:Ljava/lang/String; = null

.field public static final MULTIPLE_SELECTION:I = 0x1

.field public static final OUTPUT_PATH_ARRAY:Ljava/lang/String; = "output"

.field public static final SINGLE_SELECTION:I = 0x0

.field static final TAG:Ljava/lang/String; = "FilePickerActivity"


# instance fields
.field private mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 433
    return-void
.end method

.method private getFilePickerFactory(Landroid/content/Context;)Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
    .locals 9
    .parameter "context"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, adapter:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
    :try_start_0
    const-string v6, "com.htc.FilePicker"

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 188
    .local v5, pkgContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 189
    .local v4, loader:Ljava/lang/ClassLoader;
    const-string v6, "com.htc.FilePicker.source.FilePickerCore"

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 191
    .local v3, exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;>;"
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 193
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;>;"
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;>;"
    .end local v3           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;>;"
    .end local v4           #loader:Ljava/lang/ClassLoader;
    .end local v5           #pkgContext:Landroid/content/Context;
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private getFilePickerInstance()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/htc/app/FilePickerCore;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerCore;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addButtonToHeaderBar(Lcom/htc/widget/HeaderBarImage;)V
    .locals 0
    .parameter "headerImageRight"

    .prologue
    .line 130
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "isLandscape"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePickerCore()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    return-object v0
.end method

.method public getMCurrentViewType()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected final initialFilePicker(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->initialFilePicker(Landroid/content/Intent;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected final initialFilePicker(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->initialFilePicker(Landroid/os/Bundle;)V

    .line 116
    :cond_0
    return-void
.end method

.method public listViewOnLayout()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public notifyTextChanged()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public notifyTextChanged(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 236
    return-void
.end method

.method public notifyTextChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 248
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 56
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->initStringDescription()V

    .line 216
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->checkLandingPage()V

    .line 218
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->getFilePickerInstance()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    .line 100
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onPreCreate(Landroid/os/Bundle;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onCreate(Landroid/os/Bundle;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onDestroy()V

    .line 207
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    .line 209
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, result:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v2, p1, p2}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 264
    :cond_0
    if-ne v0, v1, :cond_1

    .line 267
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 163
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onLowMemory()V

    .line 165
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onMenuItemSelected(ILandroid/view/MenuItem;)V

    .line 179
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerActivity;->setIntent(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerActivity;->initialFilePicker(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onPrepareDialog()V

    .line 223
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 278
    return-void
.end method

.method public onResult([Ljava/lang/String;II)V
    .locals 0
    .parameter "output"
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 277
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->doStart()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 143
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePicker:Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;->doStop()V

    .line 145
    :cond_0
    return-void
.end method
