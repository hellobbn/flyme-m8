.class Lorg/flerovium/settings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/RadioInfo;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lorg/flerovium/settings/RadioInfo$22;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/flerovium/settings/RadioInfo$22;->this$0:Lorg/flerovium/settings/RadioInfo;

    # invokes: Lorg/flerovium/settings/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lorg/flerovium/settings/RadioInfo;->access$4700(Lorg/flerovium/settings/RadioInfo;)V

    .line 1135
    return-void
.end method
