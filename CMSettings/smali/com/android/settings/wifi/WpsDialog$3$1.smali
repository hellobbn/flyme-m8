.class Lorg/flerovium/settings/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WpsDialog$3;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WpsDialog$3$1;->this$1:Lorg/flerovium/settings/wifi/WpsDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WpsDialog$3$1;->this$1:Lorg/flerovium/settings/wifi/WpsDialog$3;

    iget-object v0, v0, Lorg/flerovium/settings/wifi/WpsDialog$3;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WpsDialog;->access$300(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 199
    return-void
.end method
