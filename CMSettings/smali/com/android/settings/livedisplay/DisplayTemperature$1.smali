.class Lorg/flerovium/settings/livedisplay/DisplayTemperature$1;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/livedisplay/DisplayTemperature;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/livedisplay/DisplayTemperature;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/livedisplay/DisplayTemperature;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/flerovium/settings/livedisplay/DisplayTemperature$1;->this$0:Lorg/flerovium/settings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    return-void
.end method