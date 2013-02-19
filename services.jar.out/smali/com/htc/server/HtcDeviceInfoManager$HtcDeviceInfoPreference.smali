.class final Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtcDeviceInfoPreference"
.end annotation


# static fields
.field private static KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String; = null

.field private static KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String; = null

.field private static final PROPERTY_FILE_NAME:Ljava/lang/String; = "/data/system/deviceinfo_pref.xml"

.field private static sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;


# instance fields
.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 861
    const-string v0, "LastTimeOfClientStatLogOutput"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    .line 862
    const-string v0, "LastTimeOfUseTimeLogOutput"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 853
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
    .locals 2

    .prologue
    .line 855
    const-class v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    invoke-direct {v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;-><init>()V

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    .line 857
    :cond_0
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "value"

    .prologue
    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    const/4 v1, 0x0

    .line 888
    .local v1, l:Ljava/lang/Long;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 892
    :goto_0
    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 895
    .end local v1           #l:Ljava/lang/Long;
    :goto_1
    return-wide v2

    .line 889
    .restart local v1       #l:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 895
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #l:Ljava/lang/Long;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    .line 902
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readProperty()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 926
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/deviceinfo_pref.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 928
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 929
    .local v4, p:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 931
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 932
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 937
    if-eqz v3, :cond_0

    .line 938
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 945
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_1
    :goto_0
    return-object v4

    .line 939
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 942
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 933
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 934
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    if-eqz v2, :cond_1

    .line 938
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 939
    :catch_2
    move-exception v0

    .line 940
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 936
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 937
    :goto_2
    if-eqz v2, :cond_2

    .line 938
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 941
    :cond_2
    :goto_3
    throw v5

    .line 939
    :catch_3
    move-exception v0

    .line 940
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 945
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 936
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 933
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 914
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 917
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 921
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->writeProperty(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 923
    :cond_2
    monitor-exit p0

    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 911
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static writeProperty(Ljava/util/Properties;)V
    .locals 4
    .parameter "prop"

    .prologue
    .line 949
    if-nez p0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    const/4 v1, 0x0

    .line 954
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/deviceinfo_pref.xml"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 955
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 960
    if-eqz v2, :cond_2

    .line 961
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .line 964
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 962
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 965
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 956
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 960
    if-eqz v1, :cond_0

    .line 961
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 962
    :catch_2
    move-exception v0

    .line 963
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 959
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 960
    :goto_2
    if-eqz v1, :cond_3

    .line 961
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 964
    :cond_3
    :goto_3
    throw v3

    .line 962
    :catch_3
    move-exception v0

    .line 963
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 959
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 956
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getLastTimeOfClientStatLogOutput()J
    .locals 3

    .prologue
    .line 867
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTimeOfUseTimeLogOutput()J
    .locals 3

    .prologue
    .line 876
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public setLastTimeOfClientStatLogOutput(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 872
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public setLastTimeOfUseTimeLogOutput(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 881
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method
