.class final Lorg/flerovium/settings/DataUsageSummary$AppItem$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DataUsageSummary$AppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/flerovium/settings/DataUsageSummary$AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lorg/flerovium/settings/DataUsageSummary$AppItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1580
    new-instance v0, Lorg/flerovium/settings/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lorg/flerovium/settings/DataUsageSummary$AppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1577
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/DataUsageSummary$AppItem$1;->createFromParcel(Landroid/os/Parcel;)Lorg/flerovium/settings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/flerovium/settings/DataUsageSummary$AppItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1585
    new-array v0, p1, [Lorg/flerovium/settings/DataUsageSummary$AppItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1577
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/DataUsageSummary$AppItem$1;->newArray(I)[Lorg/flerovium/settings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method
