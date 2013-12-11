.class public final Lcom/htc/util/calendar/notes/NotesHelper;
.super Ljava/lang/Object;
.source "NotesHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotesHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 36
    return-void
.end method

.method public static checkIfAssociatedNotes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "uniEventUri"

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "association_uri = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT associated with note!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->ASSOCIATE_NOTE_FALSE:Ljava/lang/Long;

    .line 227
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 212
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v8, 0x0

    .line 213
    .local v8, isAssociated:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const/4 v8, 0x1

    .line 216
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " associated with note : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    if-eqz v8, :cond_2

    .line 220
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->ASSOCIATE_NOTE_TRUE:Ljava/lang/Long;

    goto :goto_0

    .line 222
    :cond_2
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->ASSOCIATE_NOTE_FALSE:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #isAssociated:Z
    :catch_0
    move-exception v7

    .line 225
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "NotesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAssociatedNotes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->ASSOCIATE_NOTE_UNKNOWN:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static getAssociatedEvents(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/EventInstance;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 93
    const-string v1, "No association events"

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    move-object v10, v11

    .line 121
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 97
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    const-string v1, "No association events"

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v10, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    :cond_2
    const-string v1, "association_uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, eventUri:Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/htc/util/calendar/tools/UriTools;->toEventInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v8

    .line 108
    .local v8, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v8, :cond_3

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Associated event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v9           #eventUri:Ljava/lang/String;
    .end local v10           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "NotesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAssociatedNotes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 121
    goto/16 :goto_0
.end method

.method public static getAssociatedEvents2(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 39
    const/4 v6, 0x0

    .line 41
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    if-nez v6, :cond_2

    .line 49
    const-string v1, "No association events"

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v1, "NotesHelper"

    const-string v2, "close cursor in NotesHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v9, v13

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v9

    .line 53
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    const-string v1, "No association events"

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v1, "NotesHelper"

    const-string v2, "close cursor in NotesHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v9, v13

    goto :goto_0

    .line 59
    :cond_4
    :try_start_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v9, eventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    const-string v1, "association_uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, eventUri:Ljava/lang/String;
    invoke-static {p0, v10}, Lcom/htc/util/calendar/tools/UriTools;->toEventInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v8

    .line 64
    .local v8, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v8, :cond_6

    .line 65
    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v11

    .line 66
    .local v11, event_id:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Associated event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/calendar/EventInstance;->getEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 67
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v11           #event_id:J
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_5

    .line 76
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v1, "NotesHelper"

    const-string v2, "close cursor in NotesHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 72
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v9           #eventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10           #eventUri:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 73
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "NotesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAssociatedNotes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v1, "NotesHelper"

    const-string v2, "close cursor in NotesHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v9, v13

    goto/16 :goto_0

    .line 76
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v2, "NotesHelper"

    const-string v3, "close cursor in NotesHelper"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v1
.end method

.method public static getAssociatedNotesId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 12
    .parameter "context"
    .parameter "uniEventUri"

    .prologue
    const-wide/16 v10, -0x1

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "association_uri = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-wide v8, v10

    .line 188
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return-wide v8

    .line 174
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    const-wide/16 v8, -0x1

    .line 175
    .local v8, notesId:J
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "note_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " associated with note id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #notesId:J
    :catch_0
    move-exception v7

    .line 186
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "NotesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssociatedNotesId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v10

    .line 188
    goto :goto_0
.end method

.method public static setAssociation(Landroid/content/Context;JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "noteId"
    .parameter "eventUri"
    .parameter "isSet"

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 134
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_1

    .line 136
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "note_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v4, "association_uri"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v4, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_0
    if-eqz v3, :cond_0

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAssociation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/calendar/notes/NotesHelper;->Debug(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-object v3

    .line 141
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "note_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "association_uri"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 146
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "NotesHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAssociation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
