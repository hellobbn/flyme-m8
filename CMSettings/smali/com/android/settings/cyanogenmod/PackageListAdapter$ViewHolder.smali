.class Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$ViewHolder;-><init>()V

    return-void
.end method