.class public Lcom/htc/home/RosieItemUtility;
.super Ljava/lang/Object;
.source "RosieItemUtility.java"


# static fields
.field public static final ACTION_ITEM_ADDED:Ljava/lang/String; = "com.htc.launcher.action.ACTION_ITEM_ADDED"

.field public static final ACTION_ITEM_REMOVED:Ljava/lang/String; = "com.htc.launcher.action.ACTION_ITEM_REMOVED"

.field public static final ACTION_UPDATE_ICON:Ljava/lang/String; = "com.htc.launcher.action.UPDATE_SHORTCUT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_COUNT:I = 0x0

.field public static final DEFAULT_ITEM_ID:I = -0x1

.field public static final EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_ICON:Ljava/lang/String; = "favorite_icon"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "favorite_intent"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "favorite_item_id"

.field public static final EXTRA_NEWSTYLE:Ljava/lang/String; = "newStyle"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field public static final EXTRA_SELECT:Ljava/lang/String; = "select"

.field public static final EXTRA_SELECT_ARGS:Ljava/lang/String; = "selectArgs"

.field public static final EXTRA_TITEL:Ljava/lang/String; = "favorite_title"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "content://com.htc.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;I)V

    .line 100
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "count"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"
    .parameter "count"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZI)V
    .locals 9
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"
    .parameter "newStyle"
    .parameter "priority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZII)V

    .line 153
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZII)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"
    .parameter "newStyle"
    .parameter "priority"
    .parameter "count"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string v1, "newStyle"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v1, "priority"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v1, "count"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 230
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZII)V

    .line 232
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "count"

    .prologue
    .line 237
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZII)V

    .line 239
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V
    .locals 9
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "newStyle"
    .parameter "priority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZII)V

    .line 262
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZII)V
    .locals 14
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "newStyle"
    .parameter "priority"
    .parameter "count"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 271
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 273
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 274
    .local v13, idIndex:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 276
    .local v2, _id:J
    if-eqz p6, :cond_1

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 277
    invoke-static/range {v1 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v2           #_id:J
    .end local v13           #idIndex:I
    :catch_0
    move-exception v12

    .line 282
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RosieItemUtility"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v11, 0x0

    .end local v12           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p8

    .line 288
    invoke-static/range {v4 .. v10}, Lcom/htc/home/RosieItemUtility;->updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 289
    return-void

    .restart local v2       #_id:J
    .restart local v13       #idIndex:I
    :cond_1
    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p8

    .line 279
    :try_start_2
    invoke-static/range {v1 .. v7}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 284
    .end local v2           #_id:J
    .end local v13           #idIndex:I
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v11, 0x0

    throw v1

    .line 284
    .restart local v13       #idIndex:I
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v11, 0x0

    .line 286
    goto :goto_1
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "map"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 14
    .parameter "context"
    .parameter "map"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "count"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 191
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v3, v4

    const/4 v6, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 195
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 197
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 198
    .local v13, idIndex:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 200
    .local v9, _id:J
    move/from16 v0, p4

    invoke-static {p0, v9, v10, p1, v0}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v9           #_id:J
    .end local v13           #idIndex:I
    :catch_0
    move-exception v12

    .line 203
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "RosieItemUtility"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v11, 0x0

    .line 209
    .end local v12           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 210
    return-void

    .line 205
    .restart local v13       #idIndex:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v11, 0x0

    .line 207
    goto :goto_1

    .line 205
    .end local v13           #idIndex:I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v11, 0x0

    throw v2
.end method

.method private static updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"
    .parameter "title"
    .parameter "icon"
    .parameter "select"
    .parameter "selectArgs"
    .parameter "count"

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    const-string v1, "select"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "selectArgs"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    return-void
.end method
