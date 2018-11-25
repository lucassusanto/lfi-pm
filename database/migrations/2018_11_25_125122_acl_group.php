<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AclGroup extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acl_group', function (Blueprint $table) {
            $table->string('id', 36);
            $table->string('acl_group', 30);
            $table->string('parent_group_id', 36);
            $table->string('note', 76);
            $table->datetime('modified_time');
            $table->string('modified_id', 36);
            $table->datetime('created_time');
            $table->string('created_id', 36);
            $table->primary(['id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('acl_group');
    }
}
