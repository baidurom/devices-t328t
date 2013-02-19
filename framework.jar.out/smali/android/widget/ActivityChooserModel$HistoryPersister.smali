.class final Landroid/widget/ActivityChooserModel$HistoryPersister;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryPersister"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$HistoryPersister;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1383
    const/4 v2, 0x0

    .line 1384
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 1386
    .local v10, records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1387
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$1200(Landroid/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    .end local v10           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v11, records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1391
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 1397
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1400
    .local v12, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_3
    invoke-interface {v12, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1401
    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1402
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1404
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 1405
    .local v9, recordCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 1406
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1407
    .local v8, record:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v15, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    const/4 v13, 0x0

    const-string/jumbo v14, "time"

    iget-wide v15, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1410
    const/4 v13, 0x0

    const-string/jumbo v14, "weight"

    iget v15, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1411
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1388
    .end local v3           #i:I
    .end local v8           #record:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v9           #recordCount:I
    .end local v11           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v12           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_0
    move-exception v13

    :goto_1
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 1392
    .end local v10           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v11       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_0
    move-exception v1

    .line 1393
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 1417
    .restart local v3       #i:I
    .restart local v9       #recordCount:I
    .restart local v12       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v13, 0x0

    :try_start_5
    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1432
    if-eqz v2, :cond_0

    .line 1434
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1435
    .end local v3           #i:I
    .end local v9           #recordCount:I
    :catch_1
    move-exception v13

    goto :goto_2

    .line 1423
    :catch_2
    move-exception v4

    .line 1424
    .local v4, iae:Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1432
    if-eqz v2, :cond_0

    .line 1434
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 1425
    .end local v4           #iae:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 1426
    .local v6, ise:Ljava/lang/IllegalStateException;
    :try_start_9
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1432
    if-eqz v2, :cond_0

    .line 1434
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 1427
    .end local v6           #ise:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v5

    .line 1428
    .local v5, ioe:Ljava/io/IOException;
    :try_start_b
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1432
    if-eqz v2, :cond_0

    .line 1434
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_2

    .line 1429
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 1430
    .local v7, npe:Ljava/lang/NullPointerException;
    :try_start_d
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1432
    if-eqz v2, :cond_0

    .line 1434
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_2

    .line 1432
    .end local v7           #npe:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v13

    if-eqz v2, :cond_2

    .line 1434
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 1432
    :cond_2
    :goto_3
    throw v13

    .line 1435
    :catch_6
    move-exception v14

    goto :goto_3

    .line 1388
    .end local v12           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v10       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_1
.end method
