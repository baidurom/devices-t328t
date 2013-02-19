.class final Landroid/widget/ActivityChooserModel$HistoryLoader;
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
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$HistoryLoader;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1257
    const/4 v4, 0x0

    .line 1259
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1276
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1277
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1279
    const/16 v17, 0x0

    .line 1280
    .local v17, type:I
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1281
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v17

    goto :goto_0

    .line 1260
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_0
    move-exception v5

    .line 1265
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$502(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1000(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Landroid/widget/ActivityChooserModel$HistoryLoader$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1374
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 1284
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_0
    :try_start_2
    const-string/jumbo v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1285
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1358
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_1
    move-exception v20

    .line 1359
    .local v20, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1363
    if-eqz v4, :cond_1

    .line 1365
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1371
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    goto :goto_1

    .line 1289
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_2
    :try_start_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v14, readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_3
    :goto_4
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 1293
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1324
    :try_start_6
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1331
    .local v18, uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1200(Landroid/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    .line 1332
    .local v7, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1333
    .local v8, historicalRecordsCount:I
    add-int/lit8 v9, v8, -0x1

    .local v9, i:I
    :goto_5
    if-ltz v9, :cond_8

    .line 1334
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1335
    .local v6, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1333
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1296
    .end local v6           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_4
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1299
    :try_start_7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1300
    .local v11, nodeName:Ljava/lang/String;
    const-string/jumbo v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1301
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1360
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_2
    move-exception v10

    .line 1361
    .local v10, ioe:Ljava/io/IOException;
    :try_start_8
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1363
    if-eqz v4, :cond_5

    .line 1365
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1371
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 1304
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #nodeName:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    :cond_6
    const/16 v21, 0x0

    :try_start_a
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, activity:Ljava/lang/String;
    const/16 v21, 0x0

    const-string/jumbo v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1307
    .local v15, time:J
    const/16 v21, 0x0

    const-string/jumbo v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 1310
    .local v19, weight:F
    new-instance v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1312
    .local v13, readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 1363
    .end local v3           #activity:Ljava/lang/String;
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v15           #time:J
    .end local v17           #type:I
    .end local v19           #weight:F
    :catchall_0
    move-exception v21

    if-eqz v4, :cond_7

    .line 1365
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1371
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v22 .. v23}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1363
    throw v21

    .line 1338
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_8
    :try_start_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1339
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1363
    if-eqz v4, :cond_9

    .line 1365
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 1371
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 1343
    :cond_a
    :try_start_e
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1344
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->access$1302(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1000(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Landroid/widget/ActivityChooserModel$HistoryLoader$2;

    invoke-direct/range {v23 .. v24}, Landroid/widget/ActivityChooserModel$HistoryLoader$2;-><init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1357
    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1363
    if-eqz v4, :cond_b

    .line 1365
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 1371
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 1357
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_1
    move-exception v21

    :try_start_10
    monitor-exit v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    .line 1366
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_3
    move-exception v22

    goto :goto_7

    .restart local v20       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v21

    goto/16 :goto_2

    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v21

    goto/16 :goto_6

    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_6
    move-exception v21

    goto :goto_8

    :catch_7
    move-exception v21

    goto :goto_9
.end method
