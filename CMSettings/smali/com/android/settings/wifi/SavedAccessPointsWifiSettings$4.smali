.class final Lorg/flerovium/settings/wifi/SavedAccessPointsWifiSettings$4;
.super Lorg/flerovium/settings/search/BaseSearchIndexProvider;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lorg/flerovium/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 411
    .local v4, "res":Landroid/content/res/Resources;
    const v8, 0x7f09066c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lorg/flerovium/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lorg/flerovium/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 415
    .local v2, "data":Lorg/flerovium/settings/search/SearchIndexableRaw;
    iput-object v6, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 416
    iput-object v6, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 417
    iput-boolean p2, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->enabled:Z

    .line 418
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 423
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    # invokes: Lorg/flerovium/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    invoke-static {p1, v7}, Lorg/flerovium/settings/wifi/SavedAccessPointsWifiSettings;->access$600(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 427
    .local v1, "accessPointsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 428
    new-instance v2, Lorg/flerovium/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lorg/flerovium/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lorg/flerovium/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 429
    .restart local v2    # "data":Lorg/flerovium/settings/search/SearchIndexableRaw;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/flerovium/settings/wifi/AccessPoint;

    invoke-virtual {v8}, Lorg/flerovium/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 430
    iput-object v6, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 431
    iput-boolean p2, v2, Lorg/flerovium/settings/search/SearchIndexableRaw;->enabled:Z

    .line 432
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-object v5
.end method
