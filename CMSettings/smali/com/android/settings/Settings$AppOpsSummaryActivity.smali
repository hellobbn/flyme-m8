.class public Lorg/flerovium/settings/Settings$AppOpsSummaryActivity;
.super Lorg/flerovium/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpsSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/flerovium/settings/applications/AppOpsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
