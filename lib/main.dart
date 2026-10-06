side: const BorderSide(color: Colors.cyanAccent, width: 0.8),
                  ),
                ),
                icon: const Icon(Icons.bolt, color: Colors.cyanAccent),
                label: const Text(
                  'ចាប់ផ្តើមបកប្រែ (Generate Dubbed Video)',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('កំពុងចាប់ផ្តើមដំណើរការ...')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, color: Colors.cyanAccent),
        ),
        title: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.white54)),
        trailing: const Icon(Icons.chevron_right, color: Colors.white38),
        onTap: onTap,
      ),
    );
  }

  Widget _buildSpeakerButton({
    required String id,
    required String name,
    required String gender,
    required bool isSelected,
  }) {
    return InkWell(
      onTap: () => setState(() => _selectedSpeaker = id),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.cyanAccent : Colors.white12,
            width: isSelected ? 1.5 : 1,
          ),
          color: isSelected ? const Color(0xFF142B3B) : Colors.transparent,
        ),
        child: Column(
          children: [
            Icon(Icons.face, color: isSelected ? Colors.cyanAccent : Colors.white54),
            const SizedBox(height: 6),
            Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: isSelected ? Colors.white : Colors.white70)),
            Text(gender, style: const TextStyle(fontSize: 10, color: Colors.white38)),
          ],
        ),
      ),
    );
  }
}
