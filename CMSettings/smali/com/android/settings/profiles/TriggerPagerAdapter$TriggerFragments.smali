.class public final enum Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;
.super Ljava/lang/Enum;
.source "TriggerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/profiles/TriggerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerFragments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum BLUETOOTH:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum NFC:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum WIFI:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;


# instance fields
.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNameRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    new-instance v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string v1, "WIFI"

    const-class v2, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    const v3, 0x7f0901db

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->WIFI:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 180
    new-instance v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string v1, "BLUETOOTH"

    const-class v2, Lorg/flerovium/settings/profiles/triggers/BluetoothTriggerFragment;

    const v3, 0x7f0901dc

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->BLUETOOTH:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 184
    new-instance v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string v1, "NFC"

    const-class v2, Lorg/flerovium/settings/profiles/triggers/NfcTriggerFragment;

    const v3, 0x7f0901dd

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->NFC:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    sget-object v1, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->WIFI:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v4

    sget-object v1, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->BLUETOOTH:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v5

    sget-object v1, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->NFC:Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v6

    sput-object v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->$VALUES:[Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 0
    .param p4, "nameRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->mFragmentClass:Ljava/lang/Class;

    .line 196
    iput p4, p0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->mNameRes:I

    .line 197
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-class v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-object v0
.end method

.method public static values()[Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->$VALUES:[Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    invoke-virtual {v0}, [Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-object v0
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/flerovium/settings/profiles/TriggerPagerAdapter$TriggerFragments;->mNameRes:I

    return v0
.end method
