<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TypeStatus extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id' => [
				'type' => 'INT',
				'constraint' => 11,
				'unsigned' => TRUE,
				'auto_increment' => TRUE,
			],
			'type_status'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '255',
			]
		]);
		$this->forge->addKey('id', true);
		$this->forge->createTable('typeStatus');
	}
	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('typeStatus');
	}
}
