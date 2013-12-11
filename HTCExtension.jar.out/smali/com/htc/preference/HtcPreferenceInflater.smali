.class Lcom/htc/preference/HtcPreferenceInflater;
.super Lcom/htc/preference/HtcGenericInflater;
.source "HtcPreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/preference/HtcGenericInflater",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        "Lcom/htc/preference/HtcPreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 0
    .parameter "context"
    .parameter "preferenceManager"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcGenericInflater;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreferenceInflater;->init(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/htc/preference/HtcGenericInflater;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "preferenceManager"
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcGenericInflater",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, original:Lcom/htc/preference/HtcGenericInflater;,"Lcom/htc/preference/HtcGenericInflater<Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Lcom/htc/preference/HtcGenericInflater;-><init>(Lcom/htc/preference/HtcGenericInflater;Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreferenceInflater;->init(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 56
    return-void
.end method

.method private init(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 69
    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Lcom/htc/preference/HtcGenericInflater;
    .locals 2
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/htc/preference/HtcGenericInflater",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/htc/preference/HtcPreferenceInflater;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/preference/HtcPreferenceInflater;-><init>(Lcom/htc/preference/HtcGenericInflater;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/preference/HtcPreference;Landroid/util/AttributeSet;)Z
    .locals 8
    .parameter "parser"
    .parameter "parentPreference"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, tag:Ljava/lang/String;
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    const/4 v2, 0x0

    .line 85
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 112
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 86
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v1

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "extra"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "extra"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 102
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v1       #ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 107
    throw v1

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p2, Lcom/htc/preference/HtcPreference;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/preference/HtcPreference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Lcom/htc/preference/HtcGenericInflater$Parent;ZLcom/htc/preference/HtcGenericInflater$Parent;)Lcom/htc/preference/HtcGenericInflater$Parent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    check-cast p1, Lcom/htc/preference/HtcPreferenceGroup;

    .end local p1
    check-cast p3, Lcom/htc/preference/HtcPreferenceGroup;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceInflater;->onMergeRoots(Lcom/htc/preference/HtcPreferenceGroup;ZLcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/htc/preference/HtcPreferenceGroup;ZLcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreferenceGroup;
    .locals 1
    .parameter "givenRoot"
    .parameter "attachToGivenRoot"
    .parameter "xmlRoot"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 128
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    move-object p3, p1

    goto :goto_0
.end method
