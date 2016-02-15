.class Lorg/flerovium/settings/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/DockService$2;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DockService$2;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    # getter for: Lorg/flerovium/settings/bluetooth/DockService;->mCheckedItems:[Z
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/DockService;->access$300(Lorg/flerovium/settings/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 568
    return-void
.end method
